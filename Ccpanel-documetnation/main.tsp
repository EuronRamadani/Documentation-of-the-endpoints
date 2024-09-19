import "@typespec/http";

using TypeSpec.Http;
@service({
  title: "Open Call Center panel Services",
  version: "1.0.0",
})
@server("https://core-v1.datamixonline.com", "Production")
@server("https://core.datamixonline.com", "Stage")
@useAuth({
  type: AuthType.http,
  scheme: "Bearer",
  authorizationUrl: "https://api.example.com/oauth2/authorize",
  scopes: [
    "https://core.datamixonline.com",
    "https://core-v1.datamixonline.com"
  ],
})
namespace DemoService;

model AddOpsByIdRequest {
  @visibility("read", "update")
  @path
  id: int32;
  opName: string;
  opPass: string;
  currencyId: int32;
  description: string;
  autocutoff: int32;
  topDealer: int32;
  roleid: int32;
  bonusJson: {
    cashBackPercent: int32;
    moneyPercent: int32;
    cancelTimeout: int32;
  };
}
model AddOpsByIdResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    id: int32;
    opName: string;
    server: int32;
    parent: int32;
    roleid: int32;
    templateid: int32;
    adminTemplateId: int32;
    opType: int32;
    acType: int32;
    serviceLimitType: int32;
    curId: int32;
    autocutoff: int32;
    ipPermission: int32;
    description: string;
    properties: string;
    bonusJson: string;
    threefiveeightJson: string;
    userLimit: int32;
    percent: int32;
    controlPayLimit: int32;
    specs: int32;
    status: int32;
    createdAt: int32;
    updatedAt: int32;
    closedAt: int32;
  };
}
model infoResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    name: string;
    id: string;
  };
}

model editidResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    id: int32;
    opName: string;
    status: int32;
    roleid: int32;
    autocutoff: int32;
    acType: int32;
    parent: int32;
    activeStatus: int32;
    bonusJson: {
      cashBackPercent: int32;
      moneyPercent: int32;
      cashOutPercent: int32;
      cancelTimeout: int32;
    };
    currencyIds: int32[];
    currencyId: int32;
    description: string;
    createdAt: int32;
    updatedAt: int32;
    closedAt: int32;
  };
  filters: {
    type: string;
    disabled?: boolean;
    name: string;
    value: string | null;
    hidden?: boolean;
    required?: boolean;
    options?: {
      value: int32;
      text: string;
    }[];
  }[];
}

model listidResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    id: int32;
    opName: string;
    status: int32;
    parent: int32;
    roleid: int32;
    autocutoff: int32;
    acType: int32;
    permissions: {
      status: boolean;
      sport: boolean;
      slot: boolean;
      casino: boolean;
      live: boolean;
      bonus: boolean;
      ct_ck: boolean;
      ct_kk: boolean;
      ct_sk: boolean;
      ct_tk: boolean;
    };
    currencyIds: int32[];
    currencyId: int32;
    childCount: int32;
    createdAt: int32;
    activeStatus: int32;
    lastLogin: string;
    credit: int32;
    bonusCredit: int32;
  }[];
}

model listResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    servers: [int32, string][];
    currencyList: [int32, string][];
    opStatus: [int32, string][];
    ticketStatuses: {
      winStatus: int32;
      loosedStatus: int32;
      loosedStatusError: int32;
      winStatusNoMoney: int32;
      winStatusError: int32;
      cashoutStatus: int32;
      cancelUserStatus: int32;
      cancelOperatorStatus: int32;
      cancelCCStatus: int32;
      cancelSystemStatus: int32;
    };
    processTypes: string[];
    ticketTypes: string[];
    autoCutOffs: [int32, string][];
  };
}

model viewidResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    money: {
      bonus: int32;
      sport: {
        in: int32;
        out: int32;
      };
      casino: {
        in: int32;
        out: int32;
      };
      slot: {
        in: int32;
        out: int32;
      };
    };
    permissions: {
      status: boolean;
      sport: boolean;
      slot: boolean;
      casino: boolean;
      live: boolean;
      bonus: boolean;
      ct_ck: boolean;
      ct_kk: boolean;
      ct_sk: boolean;
      ct_tk: boolean;
    };
    transactions: {
      name: string;
      in: int32;
      out: int32;
    }[];
    limits: {
      name: string;
      status: int32;
      fields: {
        value: int32;
        type: string;
        name: string;
        options?: {
          text: string;
          value: int32;
        }[];
      }[];
    }[];
    info: {
      description: string;
      lastlogin: int32;
    };
  };
}
model movementsIdRequest {
  @visibility("read", "update")
  @path
  startDate: int32;
  endDate: int32;
}

model movementsIdResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: [];
}

model CouponIdResponse {
  @visibility("read", "update")
  @path
  status: integer;
  ticket: {
    id: string;
    userid: integer;
    currencyId: integer;
    operatorid: integer;
    serverid: integer;
    pin: integer;
    createdAt: integer;
    updatedAt: integer;
    ticketType: string;
    status: integer;
    totalStake: int32;
    totalTickets: integer;
    totalTipps: integer;
    rate: int32;
    income: int32;
    maxPay: int32;
    userMaxPay: int32;
    bonusPay: int32;
    taxPay: int32;
    systemArray: [];
    isLive: boolean;
    oddChangeOk: boolean;
    printed: boolean;
    paid: boolean;
    canCashout: boolean;
    isArchived: boolean;
    cashOut: int32;
    siteCommission: int32;
    tips: [
      {
        id: integer;
        ticketId: string;
        selectionId: integer;
        marketId: integer;
        matchId: integer;
        sportId: integer;
        categoryId: integer;
        tournamentId: integer;
        marketType: integer;
        selectionType: integer;
        special: string;
        odd: int32;
        matchDate: integer;
        opchange: boolean;
        homevalue: int32;
        awayvalue: int32;
        handicap: int32;
        sequence: integer;
        homescore: integer;
        awayscore: integer;
        matchminute: integer;
        isLive: boolean;
        banko: boolean;
        canceledType: integer;
        src: integer;
        sportName: string;
        categoryName: string;
        tournamentName: string;
        team1Name: string;
        team2Name: string;
        results: [];
      }
    ];
  };
}

model MarketlistResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    ln: {};
    test: {};
  };
}

model sportlimitResponse {
  @visibility("read", "update")
  @path
  status: integer;
  data: {
    maxStake: int32;
    minStake: int32;
    max_pay: int32;
  };
}

model paymentIdResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: [];
}

model PaymentListProvidersResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: [
    {
      Id: int32;
      name: string;
      prefix: string;
      extrafields: string;
      status: int32;
      createdAt: int32;
    }
  ];
}

model MarketlistOneResponse {
  @visibility("read", "update")
  @path
  status: int32;
  marketgroup: string;
  data: {};
}

model PopupPlaceseditRequest {
  @visibility("read", "update")
  @path
  ID: int32;
  widthMax: int32;
  heightMax: int32;
  LoggedIn: boolean;
  NotLoggedIn: boolean;
  MultiLanguage: boolean;
  Responsive: boolean;
}

model PopupPlaceseditResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: [];
  Id: int32;
  name: string;
  widthMax: int32;
  heightMax: int32;
  LoggedIn: boolean;
  NotLoggedIn: boolean;
  MultiLanguage: boolean;
  Responsive: boolean;
  OperatorBased: boolean;
}

model popupPlacesRequest {
  @visibility("read", "update")
  @path
  id: int32;
  limit: int32;
  page: int32;
}
model popupPlacesResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    LoggedIn: boolean;
    MultiLanguage: boolean;
    NotLoggedIn: boolean;
    OperatorBased: boolean;
    Responsive: boolean;
    heightMax: int32;
    name: string;
    widthMax: int32;
  }[];
  meta: {
    total: int32;
    page: int32;
    limit: int32;
  };
}

model PopupPlacesResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    name: string;
    widthMax: int32;
    heightMax: int32;
    LoggedIn: boolean;
    NotLoggedIn: boolean;
    MultiLanguage: boolean;
    Responsive: boolean;
    OperatorBased: boolean;
  }[];
}
model PopupStaticsResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    languages: {
      id: int32;
      name: string;
    }[];
  };
}

model SettingsResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    operatorId: int32;
    serverId: int32;
    logo: string;
    favicon: string;
    title: string;
    description: string;
    keyword: string;
    googleId: string;
    googleAnalytics: string;
    siteOnline: boolean;
    tvaccess: boolean;
    languages: {
      code: string;
      title: string;
    }[];
    language: string;
    socialMedia: [];
    contact: [];
    matchesDay: int32;
    couponsDay: int32;
    orderByTime: boolean;
    defaultColor: string;
    liveChat: string;
    showCurrency: boolean;
    couponCancelDuration: int32;
    liveMatchesHours: int32;
    liveBetsDefaultSport: int32;
    couponButtons: string;
    showTeamLogos: boolean;
    liveShowTracker: boolean;
    statisticUrl: string;
    showOnlyLive: boolean;
    prematchRequestLimit: int32;
    footerLinks: {
      name: string;
      id: string;
      icon: string;
    }[];
  };
}

model BannersPlacesRespone {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    name: string;
    widthMax: int32;
    heightMax: int32;
    LoggedIn: boolean;
    NotLoggedIn: boolean;
    Slider: boolean;
    Banner: boolean;
    MultiFile: boolean;
    MultiLanguage: boolean;
    Textable: boolean;
    Responsive: boolean;
    OperatorBased: boolean;
  }[];
}

model BannerPlacesEditRequest {
  @visibility("read", "update")
  @path
  ID: int32;
  widthMax: int32;
  heightMax: int32;
  LoggedIn: boolean;
  NotLoggedIn: boolean;
  Slider: boolean;
  Banner: boolean;
  MultiFile: boolean;
  MultiLanguage: boolean;
  Textable: boolean;
  Responsive: boolean;
}

model BannerPlacesEditResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    name: string;
    widthMax: int32;
    heightMax: int32;
    LoggedIn: boolean;
    NotLoggedIn: boolean;
    Slider: boolean;
    Banner: boolean;
    MultiFile: boolean;
    MultiLanguage: boolean;
    Textable: boolean;
    Responsive: boolean;
    OperatorBased: boolean;
  };
}

model BannerStaticsResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    languages: {
      id: int32;
      name: string;
    }[];
  };
}

model BannersPropsFilterResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    placeId: int32;
    startDate: string;
    endDate: string;
    operatorId: int32;
    languageId: int32;
    duration: int32;
    isMobile: boolean;
    isDesktop: boolean;
    isKiosk: boolean;
    isVisible: boolean;
  }[];
}

model BannersPropsFilterRequest {
  @visibility("read", "update")
  @path
  id: int32;
  placeId: ["=", int32];
}

model BannersPropsAddsRespons {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    placeId: int32;
    startDate: string;
    endDate: string;
    operatorId: int32;
    languageId: int32;
    duration: string;
    isMobile: boolean;
    isDesktop: boolean;
    isKiosk: boolean;
    isVisible: boolean;
  };
}

model BannersPropsAddsRequest {
  @visibility("read", "update")
  @path
  placeId: int32;
  startDate: "string";
  endDate: "string";
  operatorId: int32;
  languageId: int32;
  duration: "string";
  isMobile: boolean;
  isDesktop: boolean;
  isKiosk: boolean;
  isVisible: boolean;
}
model BannersPropsDeleteidResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    placeId: int32;
    startDate: string;
    endDate: string;
    operatorId: int32;
    languageId: int32;
    duration: int32;
    isMobile: boolean;
    isDesktop: boolean;
    isKiosk: boolean;
    isVisible: boolean;
  };
}
model GamesCompaniesResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    id: int32;
    cmpType: int32;
    cmpName: string;
    apiName: string;
    status: int32;
    logo: string;
    specs: int32;
    isSlot: boolean;
  }[];
}

model GamesGamesResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    data: [][];
  };
}

model GamesOpRequest {
  @visibility("read", "update")
  @path
  status: int32;
  gameid: int32;
}
model GamesOpResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    fieldCount: int32;
    affectedRows: int32;
    insertId: int32;
    info: string;
    serverStatus: int32;
    warningStatus: int32;
    changedRows: int32;
  };
}
model PageLocationResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    serverId: int32;
    operatorId: int32;
    name: string;
    parentId: int32;
    viewOrder: int32;
    createdAt: string;
    updatedAt: string;
    isVisible: boolean;
  }[];
}

model PageLocationRequest {
  @visibility("read", "update")
  @path
  ID: int32;
  serverId: {
    operation: string;
    value: int32;
  };
}

model GamesCatsResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    id: int32;
    catType: int32;
    catName: string;
    status: int32;
    specs: int32;
    isSlot: boolean;
  }[];
}

model GameseditCatsRequest {
  @visibility("read", "update")
  @path
  ID: int32;
  catType: int32;
  catName: string;
  status: int32;
  specs: int32;
  isSlot: boolean;
}

model GameseditCatsRespons {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    id: string;
    data: {
      fieldCount: int32;
      affectedRows: int32;
      insertId: int32;
      info: string;
      serverStatus: int32;
      warningStatus: int32;
      changedRows: int32;
    };
  };
}

model GameslimitIdRequest {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    limit: {
      provider: int32[];
      category: int32[];
      game: int32[];
    };
    compiledLimit: {
      provider: int32[];
      category: int32[];
      game: int32[];
    };
  };
}

model SumAllRequest {
  @visibility("read", "update")
  @path
  ID: int32;
  filter: {
    startDate: int32;
    endDate: int32;
  };
  serverId: int32;
  currencyId: int32;
}

model SumAllResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    sports: {};
    slot: {};
    casino: {};
  };
}

model CreditOpRemoveResponse {
  @visibility("read", "update")
  @path
  status: int32;
  error: {
    code: int32;
    vals: {};
    message: string;
  }[];
}
model CreditOpRemoveRequest {
  @visibility("read", "update")
  @path
  ID: int32;
  currencyId: int32;
  server: int32;
  operatorId: int32;
  amount: int32;
}

model OpsChangestatusRequest {
  @visibility("read", "update")
  @path
  temp: int32;
  name: string;
  status: int32;
}

model OpsChangestatusResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    id: int32;
    opName: string;
    status: int32;
    roleid: int32;
    autocutoff: int32;
    acType: int32;
    parent: int32;
    activeStatus: int32;
    bonusJson: {
      cashBackPercent: int32;
      moneyPercent: int32;
      cashOutPercent: int32;
      cancelTimeout: int32;
    };
    currencyIds: int32[];
    currencyId: int32;
    description: string;
    createdAt: int32;
    updatedAt: int32;
    closedAt: int32;
  };
}

model LimitOpResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    result: {
      status: int32;
    };
  };
}

model LimitOpRequest {
  @visibility("read", "update")
  @path
  data: {
    oddLimit: {
      min_odd: int32;
      max_odd: int32;
      min_total_odd: int32;
      max_total_odd: int32;
      same_coupon: int32;
      same_match: int32;
    };
    couponLimits: {
      make_coupon: {
        minTip: int32;
        betLimit: int32;
        minStake: int32;
        maxStake: int32;
        max_pay: int32;
      };
      live_coupon: {
        minTip: int32;
        betLimit: int32;
        minStake: int32;
        maxStake: int32;
        max_pay: int32;
      };
      single_coupon: {
        minTip: int32;
        betLimit: int32;
        minStake: int32;
        maxStake: int32;
        max_pay: int32;
      };
      multiple_coupon: {
        minTip: int32;
        betLimit: int32;
        minStake: int32;
        maxStake: int32;
        max_pay: int32;
      };
      combine_coupon: {
        minTip: int32;
        betLimit: int32;
        minStake: int32;
        maxStake: int32;
        max_pay: int32;
      };
      system_coupon: {
        minTip: int32;
        betLimit: int32;
        minStake: int32;
        maxStake: int32;
        max_pay: int32;
      };
    };
  };
}
model ChangePassRequest {
  @visibility("read", "update")
  @path
  status: int32;
  error: {
    code: int32;
    vals: {};
    message: string;
  }[];
}

model ChangePassResponse {
  @visibility("read", "update")
  @path
  id: string;
  weight: int32;
  color: "red" | "blue";
}

model CcpanelLangResponse {
  @visibility("read", "update")
  @path
  status: int32;
  langs: {};
}

model FulloddsLangResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    markets: {};
    selections: {};
  };
}

model frontendLangResponse {
  @visibility("read", "update")
  @path
  status: int32;
  langs: {};
}

model CuponListRequest {
  @visibility("read", "update")
  @path
  filter: {
    serverid: int32;
    startDate: string;
    endDate: string;
  };
}

model CuponListResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    tickets: {
      id: string;
      userid: int32;
      operatorid: int32;
      currencyId: int32;
      serverid: int32;
      status: int32;
      betAmount: int32;
      maxPay: int32;
      userMaxPay: int32;
      income: int32;
      createdAt: int32;
      specs: int32;
      tipCount: int32;
      bonus: int32;
      totalOdds: int32;
      systemArray: [];
      couponType: string;
      username: string;
      operator: string;
    }[];
  };
}

model MarketlistRemoveResponse {
  @visibility("read", "update")
  @path
  status: int32;
  marketgroup: string;
}

model MarketlistNewResponse {
  @visibility("read", "update")
  @path
  status: int32;
  marketgroup: string;
  data: [];
}

model LimituserResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    name: string;
    status: int32;
    fields: {
      value: int32;
      type: string;
      name: string;
      options?: {
        text: string;
        value: int32;
      }[];
    }[];
  }[];
}
model UserEditResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    id: int32;
    username: string;
    password: string;
    operatorid: int32;
    serverid: int32;
    status: int32;
    spec: int32;
    updatedAt: int32;
    createdAt: int32;
  };
}

model UserEditRequest {
  @visibility("read", "update")
  @path
  parent: int32;
  username: string;
}

model UserChangestatusResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    id: int32;
    username: string;
    password: string;
    operatorid: int32;
    serverid: int32;
    status: int32;
    spec: int32;
    updatedAt: string;
    createdAt: string;
  };
}

model UserChangestatusRequest {
  @visibility("read", "update")
  @path
  id: int32;
  name: string;
  status: int32;
}
model CouponStatusRespons {
  @visibility("read", "update")
  @path
  status: int32;
  ticket: {
    id: string;
    userid: int32;
    currencyId: int32;
    operatorid: int32;
    serverid: int32;
    pin: int32;
    createdAt: int32;
    updatedAt: int32;
    ticketType: string;
    status: int32;
    totalStake: int32;
    totalTickets: int32;
    totalTipps: int32;
    rate: int32;
    income: int32;
    maxPay: int32;
    userMaxPay: int32;
    bonusPay: int32;
    taxPay: int32;
    systemArray: [];
    isLive: boolean;
    oddChangeOk: boolean;
    printed: boolean;
    paid: boolean;
    canCashout: boolean;
    isArchived: boolean;
    cashOut: int32;
    siteCommission: int32;
    tips: {
      id: int32;
      ticketId: string;
      selectionId: int32;
      marketId: int32;
      matchId: int32;
      sportId: int32;
      categoryId: int32;
      tournamentId: int32;
      marketType: int32;
      selectionType: int32;
      team1: int32;
      team2: int32;
      createdAt: int32;
      updatedAt: int32;
      status: int32;
      special: string;
      odd: int32;
      matchDate: int32;
      opchange: boolean;
      homevalue: int32;
      awayvalue: int32;
      handicap: int32;
      sequence: int32;
      homescore: int32;
      awayscore: int32;
      matchminute: int32;
      isLive: boolean;
      banko: boolean;
      canceledType: int32;
      src: int32;
    }[];
  };
  win: {
    status: int32;
    ticketid: string;
    ticket: {};
    income: int32;
    newStatus: int32;
  };
}

model CouponStatusRequest {
  @visibility("read", "update")
  @path
  id: string;
  tip: int32;
  status: int32;
}

model CancelCouponResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {};
}

model CancelCouponRequest {
  @visibility("read", "update")
  @path
  temp: int32;
  id: string;
}

model SportlimitOpRequest {
  @visibility("read", "update")
  @path
  limit: {
    minStake: int32;
    maxStake: int32;
    max_pay: int32;
    minTip: int32;
    betLimit: int32;
  };
  part: {
    sportid: int32;
    regionid: int32;
    tournamentid: int32;
  };
  status: int32;
}

model SportlimitOpResponse {
  @visibility("read", "update")
  @path
  id: string;
  weight: int32;
  color: "red" | "blue";
}

model BannersPlacesAddRequest {
  @visibility("read", "update")
  @path
  name: string;
  widthMax: int32;
  heightMax: int32;
  LoggedIn: boolean;
  NotLoggedIn: boolean;
  Slider: boolean;
  Banner: boolean;
  MultiFile: boolean;
  MultiLanguage: boolean;
  Textable: boolean;
  Responsive: boolean;
  OperatorBased: boolean;
}

model BannersPlacesAddResponse {
  @visibility("read", "update")
  @path
  status: int32;
  error: {
    code: int32;
    vals: {};
    message: string;
  }[];
}

model BannerfilesResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    propId: int32;
    file: string;
    text: string;
    url: string;
    size: int32;
    isVisible: boolean;
    isIframe: boolean;
    isNewWindow: boolean;
    hasButton: boolean;
  }[];
}

model PagePagesResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    serverId: int32;
    operatorId: int32;
    name: string;
    prefix: string;
    locationId: int32;
    subLocationId: int32;
    pageOrder: int32;
    locationOrder: int32;
    LoggedIn: boolean;
    NotLoggedIn: boolean;
    MultiLanguage: boolean;
    defaultForTemplate: boolean;
    isVisible: boolean;
  }[];
}

model PageEditResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    serverId: int32;
    operatorId: int32;
    name: string;
    prefix: string;
    locationId: int32;
    subLocationId: int32;
    pageOrder: int32;
    locationOrder: int32;
    LoggedIn: boolean;
    NotLoggedIn: boolean;
    MultiLanguage: boolean;
    defaultForTemplate: boolean;
    isVisible: boolean;
  };
}

model PageEditRequest {
  @visibility("read", "update")
  @path
  name: string;
  prefix: string;
  locationId: int32;
  subLocationId: int32;
  pageOrder: int32;
  locationOrder: int32;
  LoggedIn: boolean;
  NotLoggedIn: boolean;
  MultiLanguage: boolean;
  defaultForTemplate: boolean;
  isVisible: boolean;
}

model PagesDataResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    pageId: int32;
    languageId: int32;
    summary: string;
    text: string;
    createdAt: string;
    updatedAt: string;
    isMobile: boolean;
    isDesktop: boolean;
    isKiosk: boolean;
    isVisible: boolean;
    markDownFormatted: boolean;
    htmlFormatted: boolean;
    hasJs: boolean;
    hasCss: boolean;
    isUrl: boolean;
    isIframe: boolean;
    isNewWindow: boolean;
  }[];
}

model PagesDataRequest {
  @visibility("read", "update")
  @path
  ID: int32;
  pageId: [];
}

model PagesDataEditRequest {
  @visibility("read", "update")
  @path
  languageId: int32;
  summary: string;
  text: string;
  isMobile: boolean;
  isDesktop: boolean;
  isKiosk: boolean;
  isVisible: boolean;
  markDownFormatted: boolean;
  htmlFormatted: boolean;
  hasJs: boolean;
  hasCss: boolean;
  isUrl: boolean;
  isIframe: boolean;
  isNewWindow: boolean;
}

model PagesDataEditResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    pageId: int32;
    languageId: int32;
    summary: string;
    text: string;
    createdAt: string;
    updatedAt: string;
    isMobile: boolean;
    isDesktop: boolean;
    isKiosk: boolean;
    isVisible: boolean;
    markDownFormatted: boolean;
    htmlFormatted: boolean;
    hasJs: boolean;
    hasCss: boolean;
    isUrl: boolean;
    isIframe: boolean;
    isNewWindow: boolean;
  };
}

model PagesDataAddRequest {
  @visibility("read", "update")
  @path
  pageId: int32;
  languageId: int32;
  summary: string;
  text: string;
  isMobile: boolean;
  isDesktop: boolean;
  isKiosk: boolean;
  isVisible: boolean;
  markDownFormatted: boolean;
  htmlFormatted: boolean;
  hasJs: boolean;
  hasCss: boolean;
  isUrl: boolean;
  isIframe: boolean;
  isNewWindow: boolean;
}

model PagesDataAddResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    pageId: int32;
    languageId: int32;
    summary: string;
    text: string;
    createdAt: int32;
    updatedAt: string;
    isMobile: boolean;
    isDesktop: boolean;
    isKiosk: boolean;
    isVisible: boolean;
    markDownFormatted: boolean;
    htmlFormatted: boolean;
    hasJs: boolean;
    hasCss: boolean;
    isUrl: boolean;
    isIframe: boolean;
    isNewWindow: boolean;
  };
}

model PagesLocationRequest {
  @visibility("read", "update")
  @path
  name: string;
  parentId: int32;
  viewOrder: int32;
  isVisible: boolean;
}

model PagesLocationResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    serverId: int32;
    operatorId: int32;
    name: string;
    parentId: int32;
    viewOrder: int32;
    createdAt: string;
    updatedAt: string;
    isVisible: boolean;
  };
}

model GamesopcResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    data: Array<Array<int32 | string>>;
    fields: Array<string>;
  };
}

model GamesOpStatusRequest {
  @visibility("read", "update")
  @path
  status: int32;
  gameid: int32;
}

model GamesOpStatusResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    fieldCount: int32;
    affectedRows: int32;
    insertId: int32;
    info: string;
    serverStatus: int32;
    warningStatus: int32;
    changedRows: int32;
  };
}

model GamesEditCatResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    id: string;
    data: {
      fieldCount: int32;
      affectedRows: int32;
      insertId: int32;
      info: string;
      serverStatus: int32;
      warningStatus: int32;
      changedRows: int32;
    };
  };
}

model GamesEditCatRequest {
  @visibility("read", "update")
  @path
  test: int32;
  catType: int32;
  catName: string;
  status: int32;
  specs: int32;
  isSlot: boolean;
}

model GamesLimitResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    limit: {
      provider: [];
      category: [];
      game: [];
    };
    compiledLimit: {
      provider: [];
      category: [];
      game: [];
    };
  };
}

model GamesLimitcategoryRequest {
  @visibility("read", "update")
  @path
  serverId: int32;
  customerId: int32;
  partId: int32;
}

model GamesLimitcategoryResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    id: int32;
    exists: boolean;
  };
}

model CcauthLoginRequest {
  @visibility("read", "update")
  @path
  username: string;
  password: string;
  serverId: int32;
}

model CcauthLoginResponse {
  @visibility("read", "update")
  @path
  status: int32;
  token: string;
  exp: int32;
}

model GardAddResponse {
  @visibility("read", "update")
  @path
  status: int32;
}

model GardListResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: [];
}

model DontResultItYetResponse {
  @visibility("read", "update")
  @path
  Status: int32;
  data: {
    tickets: {
      awayscore: int32;
      awayvalue: int32;
      canceledType: int32;
      categoryId: int32;
      createdAt: int32;
      handicap: int32;
      homescore: int32;
      homevalue: int32;
      id: int32;
      marketId: int32;
      marketType: int32;
      matchDate: int32;
      matchId: int32;
      matchminute: int32;
      maxPay: int32;
      odd: int32;
      selectionId: int32;
      selectionType: int32;
      sequence: int32;
      special: string;
      specs: int32;
      sportId: int32;
      src: int32;
      status: int32;
      team1: int32;
      team2: int32;
      ticketId: string;
      tournamentId: int32;
      updatedAt: int32;
    };
  }[];
}

model SportsLangResponse {
  @visibility("read", "update")
  @path
  status: boolean;
  request: {
    lang: string;
  };
  results: {};
}

model CattoursResponse {
  @visibility("read", "update")
  @path
  status: boolean;
  request: {
    SportId: int32;
    lang: string;
  };
  results: [];
}

model GetLangResponse {
  @visibility("read", "update")
  @path
  status: boolean;
  langs: {};
}

model PlacesDeleteResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    name: string;
    widthMax: int32;
    heightMax: int32;
    LoggedIn: boolean;
    NotLoggedIn: boolean;
    Slider: boolean;
    Banner: boolean;
    MultiFile: boolean;
    MultiLanguage: boolean;
    Textable: boolean;
    Responsive: boolean;
    OperatorBased: boolean;
  };
}

model PopupDataFilterResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {

    Id: int32;
    placeId: int32;
    startDate: string;
    endDate: string;
    operatorId: int32;
    languageId: int32;
    header: string;
    isMobile: boolean;
    isDesktop: boolean;
    isKiosk: boolean;
    isVisible: boolean;
    hasTabs: boolean;
    hasButtons: boolean;
    hasHeader: boolean;
    headerIsUrl: boolean;
    headerIsText: boolean;
    headerIsImage: boolean;
    headerIsVideo: boolean;
    headerIsHtml: boolean;
    headerIsIframe: boolean;
  }[];
  meta: {
    total: int32;
    page: int32;
    limit: int32;
  }

}

model PopupDataFilterRequest {
  @visibility("read", "update")
  @path
  Id: int32;
  limit: int32;
  page: int32;
  placeId: [];
}

model depositsFilterResponse {
  @visibility("read", "update")
  @path
  status: int32;

  data: {
    Id: string;
    amount: string;
    cashbox: string;
    createdAt: string;
    curId: string;
    operatorId: string;
    paidamount: string;
    processor: string;
    serverId: string;
    spec: string;
    status: string;
    updatedAt: string;
    userId: string;
  }[];
}

model depositsFilterRequest {
  @visibility("read", "update")
  @path
  id: int32;

  endDate: int32;
  startDate: int32;
}


model withdrawsFilterRequest {
  @visibility("read", "update")
  @path
  id: int32;

  endDate: int32;
  startDate: int32;
}
model withdrawsFilterResponse {
  @visibility("read", "update")
  @path
  status: int32;

  data: {
    Id: string;
    serverId: string;
    operatorId: string;
    userId: string;
    curId: string;
    amount: string;
    paidamount: string;
    processor: string;
    cashbox: string;
    status: string;
    createdAt: string;
    updatedAt: string;
    spec: string;
  };
}

model PopupButtonsRequest {
  @visibility("read", "update")
  @path
  ID: int32;
  dataId: int32;
  name: string;
  url: string;
  color: string;
  viewOrder: int32;
  isVisible: boolean;
}
model PopupButtonsResponse {
  @visibility("read", "update")
  @path
  status: int32;
  error: {
    code: int32;
    vals: {};
    message: string;
  }[];
}

model PopupButtonsFilterRequest {
  @visibility("read", "update")
  @path
  ID: int32;
  dataId: [];
  limit: int32;
  page: int32;
}

model PopupButtonsFilterResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    dataId: int32;
    name: string;
    url: string;
    color: string;
    viewOrder: int32;
    isVisible: boolean;
  }[];
  meta: {
    total: int32;
    page: int32;
    limit: int32;
  }
}

model LocationDeleteResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    serverId: int32;
    operatorId: int32;
    name: string;
    parentId: int32;
    viewOrder: int32;
    createdAt: string;
    updatedAt: string;
    isVisible: boolean;
  };
}

model LocationPagesAddRequest {
  @visibility("read", "update")
  @path
  operatorId: int32;
  name: string;
  parentId: int32;
  viewOrder: int32;
  isVisible: boolean;
  serverId: int32;
}

model LocationPagesAddResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    serverId: int32;
    operatorId: int32;
    name: string;
    parentId: int32;
    viewOrder: int32;
    createdAt: int32;
    updatedAt: string;
    isVisible: boolean;
  };
}

model EditCompanyResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    id: string;
    data: {
      fieldCount: int32;
      affectedRows: int32;
      insertId: int32;
      info: string;
      serverStatus: int32;
      warningStatus: int32;
      changedRows: int32;
    };
  };
}
model EditCompanyRequest {
  @visibility("read", "update")
  @path
  temp: int32;
  cmpType: int32;
  cmpName: string;
  apiName: string;
  status: int32;
  logo: string;
  specs: int32;
  isSlot: boolean;
}

model DeletePageResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    serverId: int32;
    operatorId: int32;
    name: string;
    prefix: string;
    locationId: int32;
    subLocationId: int32;
    pageOrder: int32;
    locationOrder: int32;
    LoggedIn: boolean;
    NotLoggedIn: boolean;
    MultiLanguage: boolean;
    defaultForTemplate: boolean;
    isVisible: boolean;
  };
}
model AddProviderRequest {
  @visibility("read", "update")
  @path
  id: int32;
  name: string;
  prefix: string;
  extrafields: {
    withdraw: {
      type: string;
      properties: {};
      required: [];
    };
    deposit: {
      type: string;
      properties: {};
      required: [];
    };
  };
}
model AddProviderResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: [
    boolean,
    {
      Id: int32;
      name: string;
      prefix: string;
      extrafields: string;
      status: int32;
      createdAt: string;
      currencies: string;
    }
  ];
}
model Widget {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    result: {
      status: int32;
    };
  };
}
model addPopupDataRequest {
  @visibility("read", "update")
  @path
  endDate: string;
  hasButtons: boolean;
  hasHeader: boolean;
  hasTabs: boolean;
  header: string;
  headerIsHtml: boolean;
  headerIsIframe: boolean;
  headerIsImage: boolean;
  headerIsText: boolean;
  headerIsUrl: boolean;
  headerIsVideo: boolean;
  isDesktop: boolean;
  isKiosk: boolean;
  isMobile: boolean;
  isVisible: boolean;
  languageId: string;
  operatorId: string;
  placeId: string;
  startDate: string;
}
model addPopupDataResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    endDate: string;
    hasButtons: boolean;
    hasHeader: boolean;
    hasTabs: boolean;
    header: int32;
    headerIsHtml: boolean;
    headerIsIframe: boolean;
    headerIsImage: boolean;
    headerIsText: boolean;
    headerIsUrl: boolean;
    headerIsVideo: boolean;
    isDesktop: boolean;
    isKiosk: boolean;
    isMobile: boolean;
    isVisible: boolean;
    languageId: int32;
    operatorId: int32;
    placeId: int32;
    startDate: string;
  }[];
}
model addPopupTabRequest {
  @visibility("read", "update")
  @path
  dataId: int32;
  isVisible: boolean;
  name: string;
  text: string;
  viewOrder: string;
}


model addPopupTabResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    dataId: int32;
    isVisible: boolean;
    name: string;
    text: string;
    viewOrder: string;
  }[];
}


model popupTabRequest {
  @visibility("read", "update")
  @path
  id: int32;
  limit: int32;
  page: int32;
  dataId: [];
}
model popupTabResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    dataId: int32;
    isVisible: boolean;
    name: string;
    text: string;
    viewOrder: int32;
  }[];
  meta: {
    total: int32;
    page: int32;
    limit: int32;
  };
}



model addPopupButtonRequest {
  @visibility("read", "update")
  @path
  color: string;
  dataId: int32;
  isVisible: boolean;
  name: string;
  url: string;
  viewOrder: string;
}
model addPopupButtonResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    color: string;
    dataId: int32;
    isVisible: boolean;
    name: string;
    url: string;
    viewOrder: string;
  }[];
}

model addpageRequest {
  @visibility("read", "update")
  @path
  id: int32;
  name: string;
  prefix: string;
  locationId: int32;
  locationOrder: string;
  subLocationId: int32;
  pageOrder: string;
  LoggedIn: boolean;
  NotLoggedIn: boolean;
  MultiLanguage: boolean;
  defaultForTemplate: boolean;
  isVisible: boolean;
}
model addpageResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    serverId: int32;
    operatorId: int32;
    name: string;
    prefix: string;
    locationId: int32;
    subLocationId: int32;
    pageOrder: string;
    locationOrder: string;
    LoggedIn: boolean;
    NotLoggedIn: boolean;
    MultiLanguage: boolean;
    defaultForTemplate: boolean;
    isVisible: boolean;
  };
}

model DepositsPaymentSummaryRequest {
  @visibility("read", "update")
  @path
  Id: int32;
  createdAt: [];
}
model DepositsPaymentSummarybResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    status: int32;
    total: int32;
  }[];
}


model bannerPlacesRequest {
  @visibility("read", "update")
  @path
  id: int32;
  limit: int32;
  page: int32;
}
model bannerPlacesResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    name: string;
    widthMax: int32;
    heightMax: int32;
    LoggedIn: boolean;
    NotLoggedIn: boolean;
    Slider: boolean;
    Banner: boolean;
    MultiFile: boolean;
    MultiLanguage: boolean;
    Textable: boolean;
    Responsive: boolean;
    OperatorBased: boolean;
  }[];
  meta: {
    total: int32;
    page: int32;
    limit: int32;
  };
}


model changeProvideStatusRequest {
  @visibility("read", "update")
  @path
  Id: int32;
  status: boolean;
}
model changeProviderStatusbResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    createdAt: int32;
    extrafields: string;
    name: string;
    operatorId: int32;
    prefix: string;
    providerId: int32;
    status: int32;
  }[];
}



model bannerFileRequest {
  @visibility("read", "update")
  @path
  id: int32;
  limit: int32;
  page: int32;
  propId: [];
}
model bannerFileResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    file: string;
    hasButton: boolean;
    isIframe: boolean;
    isNewWindow: boolean;
    isVisible: boolean;
    propId: int32;
    size: int32;
    text: string;
    url: int32;
  }[];
  meta: {
    total: int32;
    page: int32;
    limit: int32;
  };
}
model addBannerFileRequest {
  @visibility("read", "update")
  @path
  Id: int32;
  file: string;
  hasButton: boolean;
  isIframe: boolean;
  isNewWindow: boolean;
  isVisible: boolean;
  propId: int32;
  size: int32;
  text: string;
  url: string;
}
model addBannerFileResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    file: string;
    hasButton: boolean;
    isIframe: boolean;
    isNewWindow: boolean;
    isVisible: boolean;
    propId: int32;
    size: int32;
    text: string;
    url: string;
  }[];
}
model addBannerDataRequest {
  @visibility("read", "update")
  @path
  id: int32;
  duration: int32;
  endDate: string;
  isDesktop: boolean;
  isKiosk: boolean;
  isMobile: boolean;
  isVisible: boolean;
  languageId: int32;
  operatorId: int32;
  placeId: int32;
  startDate: string;
}
model addBannerDataResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    duration: int32;
    endDate: string;
    isDesktop: int32;
    isKiosk: int32;
    isMobile: int32;
    isVisible: int32;
    languageId: int32;
    operatorId: int32;
    placeId: int32;
    startDate: string;
  }[];
}

model editBannerDataRequest {
  @visibility("read", "update")
  @path
  Id: int32;
  duration: int32;
  endDate: string;
  isDesktop: boolean;
  isKiosk: boolean;
  isMobile: boolean;
  isVisible: boolean;
  languageId: int32;
  operatorId: int32;
  placeId: int32;
  startDate: string;
}
model editBannerDataResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    duration: int32;
    endDate: string;
    isDesktop: int32;
    isKiosk: int32;
    isMobile: int32;
    isVisible: int32;
    languageId: int32;
    operatorId: int32;
    placeId: int32;
    startDate: string;
  }[];
}


@error
model Error {
  code: int32;
  message: string;
}

@route("/cc/banners/props/add")
@tag("Banner")
interface addBannerData {
  @post create(...addBannerDataRequest): addBannerDataResponse | Error;
}

@route("/cc/banners/files/edit")
@tag("Banner")
interface editBannerFile {
  @post create(
    @path id: string,
    ...addBannerFileRequest
  ): addBannerFileResponse | Error;
}

@route("/cc/banners/files/delete")
@tag("Banner")
interface deleteBannerFile {
  @get list(@path id: string): addBannerFileResponse | Error;
}


@route("/cc/banners/files/add")
@tag("Banner")
interface addBannerFile {
  @post create(...addBannerFileRequest): addBannerFileResponse | Error;
}

@route("/cc/payment/withdraws/summary")
@tag("Payments")
interface withdrawsSummary {
  @post create(...DepositsPaymentSummaryRequest): DepositsPaymentSummarybResponse | Error;
}

@route("/cc/payment/operator/provider/edit")
@tag("Payments")
interface changePaymentProviderStatus {
  @post create(
    @path id: string,
    ...changeProvideStatusRequest
  ): changeProviderStatusbResponse | Error;
}

@route("/cc/payment/deposits/summary")
@tag("Payments")
interface DepositsSummary {
  @post create(...DepositsPaymentSummaryRequest): DepositsPaymentSummarybResponse | Error;
}


@route("/cc/pages/page/add")
@tag("Pages")
interface addpage {
  @post create(...addpageRequest): addpageResponse | Error;
}


@route("/cc/popup/buttons/delete")
@tag("Popup")
interface deletePopupButton {
  @get list(@path id: string): addPopupButtonResponse | Error;
}
@route("/cc/popup/buttons/edit")
@tag("Popup")
interface editPopupButton {
  @post create(
    @path id: string,
    ...addPopupButtonRequest
  ): addPopupButtonResponse | Error;
}

@route("/cc/popup/tabs/filter")
@tag("Popup")
interface popupsTabs {
  @post create(...popupTabRequest): popupTabResponse | Error;
}


@route("/cc/popup/tabs/edit")
@tag("Popup")
interface editPopupTab {
  @post create(
    @path id: string,
    ...addPopupTabRequest
  ): addPopupTabResponse | Error;
}

@route("/cc/popup/tabs/delete")
@tag("Popup")
interface deletePopupTabs {
  @get list(@path id: string): addPopupTabResponse | Error;
}
@route("/cc/popup/data/delete")
@tag("Popup")
interface deletePopupData {
  @get list(@path id: string): addPopupDataResponse | Error;
}

@route("/cc/popup/data/edit")
@tag("Popup")
interface editPopupData {
  @post create(
    @path id: string,
    ...addPopupDataRequest
  ): addPopupDataResponse | Error;
}

@route("/cc/popup/tabs/add")
@tag("Popup")
interface addPopupTabs {
  @post create(...addPopupTabRequest): addPopupTabResponse | Error;
}

@route("/cc/popup/data/add")
@tag("Popup")
interface addPopupData {
  @post create(...addPopupDataRequest): addPopupDataResponse | Error;
}

@route("/cc/pages/page/delete")
@tag("Pages")
interface DeletePage {
  @get list(
    @path id: string,
  ): DeletePageResponse[] | Error;
}

@route("/cc/payment/add/provider")
@tag("Payments")
interface AddProvider {
  @post create(...AddProviderRequest): AddProviderResponse[] | Error;
}

@route("/cc/pages/data/filter")
@tag("Pages")
interface PagesData {
  @post create(...PagesDataRequest): PagesDataResponse[] | Error;
}

@route("cc/pages/location/add")
@tag("Location")
interface LocationPagesAdd {
  @post create(...LocationPagesAddRequest): LocationPagesAddResponse[] | Error;
}

@route("/cc/popup/buttons/filter")
@tag("Popup")
interface PopupButtonsFilter {
  @post create(
    ...PopupButtonsFilterRequest
  ): PopupButtonsFilterResponse[] | Error;
}

@route("/cc/popup/buttons/add")
@tag("Popup")
interface PopupButtons {
  @post create(...PopupButtonsRequest): PopupButtonsResponse[] | Error;
}

@route("/api/ccauth/login")
@tag("Login")
interface CcauthLogin {
  @post create(...CcauthLoginRequest): CcauthLoginResponse[] | Error;
}

@route("/cc/popup/data/filter")
@tag("Popup")
interface PopupDataFilter {
  @post create(...PopupDataFilterRequest): PopupDataFilterResponse[] | Error;
}

@route("/cc/pages/data/add")
@tag("Pages")
interface PagesDataAdd {
  @post create(...PagesDataAddRequest): PagesDataAddResponse[] | Error;
}

@route("/cc/banners/places/edit")
@tag("Banner")
interface BannerPlacesEdit {
  @post create(
    @path id: string,
    ...BannerPlacesEditRequest
  ): BannerPlacesEditResponse[] | Error;
}

@route("/cc/games/edit/company")
@tag("Games")
interface EditCompany {
  @post create(
    @path id: string,
    ...EditCompanyRequest
  ): EditCompanyResponse[] | Error;
}

@route("/cc/games/op")
@tag("Games")
interface GamesOpStatus {
  @post create(
    @path serverId: string,
    @path opid: string,
    ...GamesOpStatusRequest
  ): GamesOpStatusResponse[] | Error;
}

@route("/cc/pages/location/edit")
@tag("Pages")
interface PagesLocation {
  @post create(
    @path id: string,
    ...PagesLocationRequest
  ): PagesLocationResponse[] | Error;
}

@route("/cc/games/limit")
@tag("Games")
interface GamesLimitcategory {
  @post create(
    @path type: string,
    @path part: string,
    ...GamesLimitcategoryRequest
  ): PagesLocationResponse[] | Error;
}

@route("/cc/pages/data/edit")
@tag("Pages")
interface PagesDataEdit {
  @post create(
    @path id: string,
    ...PagesDataEditRequest
  ): PagesDataEditResponse[] | Error;
}

@route("/cc/banners/places/add")
@tag("Banner")
interface BannersPlacesAdd {
  @post create(...BannersPlacesAddRequest): BannersPlacesAddResponse[] | Error;
}

@route("/cc/pages/page/filter")
@tag("Pages")
interface PagePages {
  @post create(): PagePagesResponse[] | Error;
}

@route("/cc/pages/page/edit")
@tag("Pages")
interface PageEdit {
  @post create(
    @path id: string,
    ...PageEditRequest
  ): PageEditResponse[] | Error;
}
@route("/cc/ops/add")
@tag("Ops")
interface OpsAddById {
  @post create(
    @path serverId: string,
    ...AddOpsByIdRequest
  ): AddOpsByIdResponse[] | Error;
}

@route("/cc/games/op/")
@tag("Games")
interface GamesOpc {
  @get list(
    @path serverId: string,
    @path opid: string
  ): GamesopcResponse[] | Error;
}

@route("/cc/banners/places/delete")
@tag("Banner")
interface PlacesDelete {
  @get list(@path placesId: string): PlacesDeleteResponse[] | Error;
}

@route("/cc/lang/sports")
@tag("Lang")
interface SportsLang {
  @get list(@path lang: string): SportsLangResponse[] | Error;
}

@route("/v1/lang/get")
@tag("Lang")
interface GetLang {
  @get list(
    @path part: string,
    @path lang: string
  ): SportsLangResponse[] | Error;
}

@route("/cc/gard/add")
@tag("Gard")
interface GardAdd {
  @get list(
    @path guardType: string,
    @path value: string
  ): GardAddResponse[] | Error;
}

@route("cc/pages/location/delete")
@tag("Location")
interface LocationDelete {
  @get list(@path locationId: string): LocationDeleteResponse[] | Error;
}

@route("/cc/games/limit")
@tag("Games")
interface GamesLimit {
  @get list(
    @path serverId: string,
    @path opId: string,
    @path userId: string
  ): GamesLimitResponse[] | Error;
}

@route("/cc/lang/cattours")
@tag("Lang")
interface Cattours {
  @get list(
    @path sportid: string,
    @path lang: string
  ): CattoursResponse[] | Error;
}

@route("/cc/gard/get")
@tag("Gard")
interface GardList {
  @get list(@path guardType: string): GardListResponse[] | Error;
}

@route("/cc/data/info")
@tag("Data")
interface info {
  @get list(): infoResponse[] | Error;
}

@route("/cc/coupon/dontResultItYet")
@tag("Coupon")
interface DontResultItYet {
  @post create(...bannerFileRequest): bannerFileResponse | Error;
}

@route("/cc/banners/files/filter")
@tag("Banner")
interface Bannerfiles {
  @post create(...bannerFileRequest): bannerFileResponse | Error;
}

@route("/data/static/lang/fullodds/tr")
@tag("Lang")
interface FulloddsLang {
  @get list(): FulloddsLangResponse[] | Error;
}

@route("/cc/marketlist/remove")
@tag("Marketlist")
interface MarketlistRemove {
  @get read(@path marketName: string): MarketlistRemoveResponse | Error;
}

@route("/cc/marketlist/new")
@tag("Marketlist")
interface MarketlistNew {
  @get read(@path marketName: string): MarketlistNewResponse | Error;
}

@route("/cc/games/companies")
@tag("Games")
interface GamesCompanies {
  @get list(): GamesCompaniesResponse[] | Error;
}

@route("/v1/lang/get/frontend/")
@tag("Lang")
interface frontendLang {
  @get list(): frontendLangResponse[] | Error;
}

@route("/cc/banners/places/filter")
@tag("Banner")
interface BannersPlaces {
  @post create(...bannerPlacesRequest): bannerPlacesResponse | Error;
}

@route("/cc/payment/deposits/filter")
@tag("Payments")
interface depositsFilter {
  @post create(...depositsFilterRequest): depositsFilterResponse | Error;
}

@route("/cc/payment/withdraws/filter")
@tag("Payments")
interface withdrawsFilter {
  @post create(...withdrawsFilterRequest): withdrawsFilterResponse | Error;
}

@route("/cc/games/cats")
@tag("Games")
interface PaymentListProviders {
  @get list(): PaymentListProvidersResponse[] | Error;
}
@route("/v1/lang/get/ccpanel")
@tag("Lang")
interface CcpanelLang {
  @get list(): CcpanelLangResponse[] | Error;
}

@route("/cc/payment/listproviders")
@tag("Payments")
interface GamesCats {
  @get list(): GamesCatsResponse[] | Error;
}

@route("/cc/settings/all")
@tag("Settings")
interface Settings {
  @get list(): SettingsResponse[] | Error;
}

@route("/cc/banners/statics")
@tag("Banner")
interface BannerStatics {
  @get list(): BannerStaticsResponse[] | Error;
}

@route("/cc/sportlimit/cur/")
@tag("Sportlimit")
interface sportlimit {
  @get read(@path curr: string): sportlimitResponse | Error;
}

@route("cc/games/games")
@tag("Games")
interface GamesGames {
  @get list(): GamesGamesResponse[] | Error;
}

@route("/cc/marketlist/all")
@tag("Marketlist")
interface marketlist {
  @get list(): MarketlistResponse[] | Error;
}

// @route("/cc/games/limit")
// @tag("Edona")
// interface GameseditCats {
//   @get list(...GameseditCatsRespons): GameseditCatsRespons[] | Error;
// }

@route("/cc/popup/places/filter")
@tag("Popup")
interface popupPlace {
  @post create(...popupPlacesRequest): popupPlacesResponse | Error;
}


@route("/cc/coupon/cancelCoupon")
@tag("Coupon")
interface CancelCoupon {
  @post create(...CancelCouponRequest): CancelCouponResponse[] | Error;
}

@route("/cc/popup/places/edit")
@tag("Popup")
interface PopupPlacesedit {
  @post create(
    @path id: string,
    ...PopupPlaceseditRequest
  ): PopupPlaceseditResponse[] | Error;
}

@route("/cc/sportlimit")
@tag("Sportlimit")
interface SportlimitOp {
  @post create(
    @path type: string,
    @path serverId: string,
    @path id: string,
    ...SportlimitOpRequest
  ): SportlimitOpResponse[] | Error;
}

@route("/cc/ops/changepass")
@tag("Ops")
interface ChangePass {
  @post create(
    @path id: string,
    ...ChangePassRequest
  ): ChangePassResponse[] | Error;
}

@route("/cc/limit/op")
@tag("Limit")
interface LimitOp {
  @post create(
    @path serverId: int32,
    @path dealerId: int32,
    ...LimitOpRequest
  ): LimitOpResponse[] | Error;
}

@route("/cc/ops/changestatus")
@tag("Ops")
interface OpsChangestatus {
  @post create(
    @path id: string,
    ...OpsChangestatusRequest
  ): OpsChangestatusResponse[] | Error;
}
@route("/cc/credit/op")
@tag("Credit")
interface CreditOpRemove {
  @post create(
    @path type: string,
    ...CreditOpRemoveRequest
  ): CreditOpRemoveResponse[] | Error;
}

@route("cc/users/changestatus")
@tag("User")
interface UserChangestatus {
  @post create(
    @path Id: string,
    ...UserChangestatusRequest
  ): UserChangestatusResponse[] | Error;
}

@route("/cc/games/op/{serverId}/{opid}/status")
@tag("Games")
interface GamesOp {
  @post create(
    @path serverId: int32,
    @path opid: int32,
    ...GamesOpRequest
  ): GamesOpResponse[] | Error;
}

@route("/cc/coupon/list")
@tag("Coupon")
interface CuponList {
  @post create(...CuponListRequest): CuponListResponse[] | Error;
}

@route("/cc/coupon/status")
@tag("Coupon")
interface CouponStatus {
  @post create(...CouponStatusRequest): CouponStatusRespons[] | Error;
}

@route("/cc/pages/location/filter")
@tag("Location")
interface PageLocation {
  @post create(...PageLocationRequest): PageLocationResponse[] | Error;
}

@route("/cc/games/edit/cat/")
@tag("Games")
interface GameseditCats {
  @post create(
    @path id: string,
    ...GameseditCatsRequest
  ): GameseditCatsRespons[] | Error;
}

@route("/cc/banners/props/edit")
@tag("Banner")
interface editBannerData {
  @post create(
    @path id: string,
    ...editBannerDataRequest
  ): editBannerDataResponse | Error;
}

// @route("/cc/banners/props/add")
// @tag("Banner")
// interface BannersPropsAdds {
//   @post create(...BannersPropsAddsRequest): BannersPropsAddsRespons[] | Error;
// }

@route("/cc/users/edit")
@tag("User")
interface UserEdit {
  @post create(
    @path serverId: string,
    @path userId: string,
    ...UserEditRequest
  ): UserEditResponse[] | Error;
}

@route("/cc/data/list")
@tag("Data")
interface list {
  @get list(): listResponse[] | Error;
}

@route("/cc/marketlist/one/")
@tag("Marketlist")
interface MarketlistOne {
  @get read(@path marketName: string): MarketlistOneResponse | Error;
}

@route("/cc/limit/user")
@tag("Limit")
interface Limituser {
  @get read(
    @path serverId: string,
    @path userId: string
  ): LimituserResponse | Error;
}

@route("/cc/banners/props/delete/")
@tag("Banner")
interface BannersPropsDeleteid {
  @get read(@path id: string): listidResponse | Error;
}

@route("/cc/ops/list")
@tag("Ops")
interface listid {
  @get read(@path id: string): BannersPropsDeleteidResponse | Error;
}

@route("/cc/coupon/get")
@tag("Coupon")
interface CouponId {
  @get read(@path id: string): CouponIdResponse | Error;
}

@route("/cc/popup/statics")
@tag("Popup")
interface PopupStatics {
  @get read(): PopupStaticsResponse | Error;
}

@route("/cc/movements")
@tag("Movements")
interface MovementsId {
  @get read(
    @path serverId: int32,
    @path currencyId: int32,
    @query startDate: int32,
    @query endDate: int32
  ): movementsIdResponse | Error;
}

@route("/cc/ops/view")
@tag("Ops")
interface viewtid {
  @get read(@path serverId: string, @path opId: string): viewidResponse | Error;
}

@route("/cc/payment/list/")
@tag("Payments")
interface paymentId {
  @get read(@path id: string): paymentIdResponse | Error;
}

@route("/cc/ops/edit/")
@tag("Ops")
interface editid {
  @get read(@path serverId: string, @path opId: string): editidResponse | Error;
}

@route("/cc/banners/props/filter")
@tag("Banner")
interface BannersPropsFilter {
  @post create(
    ...BannersPropsFilterRequest
  ): BannersPropsFilterResponse | Error;
}
@route("/cc/stats/sumall")
@tag("Stats")
interface SumAll {
  @post create(...SumAllRequest): SumAllResponse | Error;
}
