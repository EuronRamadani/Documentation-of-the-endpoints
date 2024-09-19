import "@typespec/http";

using TypeSpec.Http;
@service({
  title: "Back office panel Services",
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
model AllsummaryRequest {
  @visibility("read", "update")
  @path
  id: int32;
  endDate: int32;
  startDate: int32;
}
model AllsummaryRespons {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
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
  fields: string[];
  names: string[];
}

model LimitRespons {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    result: {
      status: int32;
    };
    info: {
      name: string;
    }[];
  };
}

model LimitRequest {
  @visibility("read", "update")
  @path
  Id: int32;
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
      status: int32;
      betLimit: int32;
      minStake: int32;
      maxStake: int32;
      max_pay: int32;
    };
    live_coupon: {
      minTip: int32;
      status: int32;
      betLimit: int32;
      minStake: int32;
      maxStake: int32;
      max_pay: int32;
    };
    single_coupon: {
      minTip: int32;
      status: int32;
      betLimit: int32;
      minStake: int32;
      maxStake: int32;
      max_pay: int32;
    };
    multiple_coupon: {
      minTip: int32;
      status: int32;
      betLimit: int32;
      minStake: int32;
      maxStake: int32;
      max_pay: int32;
    };
    combine_coupon: {
      minTip: int32;
      status: int32;
      betLimit: int32;
      minStake: int32;
      maxStake: int32;
      max_pay: int32;
    };
    system_coupon: {
      minTip: int32;
      status: int32;
      betLimit: int32;
      minStake: int32;
      maxStake: int32;
      max_pay: int32;
    };
  };
}

model SumallResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    sports: {};
    slot: {
      in: int32;
      out: int32;
    };
    casino: {
      in: int32;
      out: int32;
    };
  };
}

model dataDeleteResponse {
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

model dataEditResponse {
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

model dataEditRequest {
  @visibility("read", "update")
  @path
  Id: int32;
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

model SumallRequest {
  @visibility("read", "update")
  @path
  id: int32;
  filter: {
    startDate: int32;
    endDate: int32;
  };
  currencyId: int32;
}

model SpecificallyResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    specId: int32;
    specValue: string;
    status: int32;
  }[];
}

model TicketsResponse {
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
      sportName: string;
      categoryName: string;
      tournamentName: string;
      team1Name: string;
      team2Name: string;
    }[];
  };
}

model MovementsRequest {
  @visibility("read", "update")
  @path
  id: int32;
  endDate: int32;
  startDate: int32;
}

model MovementsResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    id: int32;
    from_op: int32;
    to_op: int32;
    userid: int32;
    amount: int32;
    datecompleted: int32;
    from_name: string;
    to_name: string;
    username: string;
  }[];
}
model locationAddRequest {
  @visibility("read", "update")
  @path
  id: int32;
  isVisible: boolean;
  name: string;
  parentId: string;
  viewOrder: int32;
}
model locationAddResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    createdAt: int32;
    isVisible: boolean;
    name: string;
    operatorId: int32;
    parentId: int32;
    serverId: int32;
    updatedAt: string;
    viewOrder: int32;
  };
}

model FilterRequest {
  @visibility("read", "update")
  @path
  id: int32;
  name: string;
  status: boolean;
}

model pageFilterRequest {
  @visibility("read", "update")
  @path
  Id: int32;
  pageId: [];
  limit: int32;
  page: int32;
}

model pageFilterResponse {
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

model pageEditRequest {
  @visibility("read", "update")
  @path
  Id: int32;
  name: string;
  prefix: string;
  locationId: string | int32;
  locationOrder: int32;
  subLocationId: int32;
  pageOrder: int32;
  LoggedIn: boolean;
  NotLoggedIn: boolean;
  MultiLanguage: boolean;
  defaultForTemplate: boolean;
  isVisible: boolean;
}
model pageEdiResponse {
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

model pageAddRequest {
  @visibility("read", "update")
  @path
  id: int32;
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
model pageAddResponse {
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

model CreditRequest {
  @visibility("read", "update")
  @path
  id: int32;
  amount: int32;
  type: int32;
  currencyId: int32;
}
model CreditResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    data: {
      id: int32;
      amount: int32;
      type: int32;
      currencyId: int32;
    };
    balance: int32;
  };
}

model DealerticketsResponse {
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
      sportName: string;
      categoryName: string;
      tournamentName: string;
      team1Name: string;
      team2Name: string;
    }[];
  };
}

model RegistererrorResponse {
  @visibility("read", "update")
  @path
  status: int32;
  error: {
    code: int32;
    vals: {};
    message: string;
  }[];
}

model RegistererrorRequest {
  @visibility("read", "update")
  @path
  id: int32;
  tckno: null | string;
  name: null | string;
  surname: null | string;
  birthday: null | string;
  username: string;
  email: null | string;
  password: string;
  newpassword: null | string;
  gsm: null | string;
  secQuest: null | string;
  secAnswer: null | string;
}
model GamescategoryRequest {
  @visibility("read", "update")
  @path
  id: int32;
  spec: int32;
  gameid: int32;
  action: "rem" | "add" | "upd"; // Assuming action can be one of these three values
}

model GamescategoryResponse {
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

model withdrawsFilterRequest {
  @visibility("read", "update")
  @path
  id: int32;
  createdAt: [];
  limit: int32;
  order: string;
  orderAs: string;
  page: int32;
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

model addspecificallyRequest {
  @visibility("read", "update")
  @path
  id: int32;
  specValue: string;
  specId: int32;
}
model addspecificallyResponse {
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
  };
}

model editpageRequest {
  @visibility("read", "update")
  @path
  id: int32;
  prefix: string;
  locationId: int32;
  locationOrder: int32;
  subLocationId: int32;
  pageOrder: int32;
  LoggedIn: boolean;
  NotLoggedIn: boolean;
  MultiLanguage: boolean;
  defaultForTemplate: boolean;
  isVisible: boolean;
}
model editpageResponse {
  @visibility("read", "update")
  @path
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
}

model locationEditResponse {
  @visibility("read", "update")
  @path
  status: int32;
  Id: int32;
  serverId: int32;
  operatorId: int32;
  name: string;
  parentId: int32;
  viewOrder: int32;
  createdAt: string;
  updatedAt: string;
  isVisible: boolean;
}

model locationEditRequest {
  @visibility("read", "update")
  @path
  Id: int32;
  serverId: int32;
  operatorId: int32;
  name: string;
  parentId: int32;
  viewOrder: int32;
  createdAt: string;
  updatedAt: string;
  isVisible: boolean;
}

model ChangestatusRequest {
  @visibility("read", "update")
  @path
  id: int32;
  endDate: int32;
  startDate: int32;
}

model DeleteResponse {
  @visibility("read", "update")
  @path
  Id: int32;
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
model ProvidersResponse {
  @visibility("read", "update")
  @path
  Id: int32;
  data: {
    Id: int32;
    providerId: int32;
    operatorId: int32;
    status: int32;
    createdAt: int32;
    name: string;
    prefix: string;
    extrafields: string;
  }[];
}

model locationDeleteResponse {
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

model statsListResponse {
  @visibility("read", "update")
  @path
  Id: int32;
  status: int32;
  data: [string, int32, int32, int32, int32, int32, int32, int32, int32, int32];
  fields: {
    transType: string[];
    ticketType: string[];
  };
  names: string[];
}

model statsListRequest {
  @visibility("read", "update")
  @path
  id: int32;
  filter: {
    startDate: int32;
    endDate: int32;
    currencyId: int32;
    listType: string;
  };
}

model loginRequest {
  @visibility("read", "update")
  @path
  id: int32;
  user: string;
  pass: string;
  serverId: int32;
}
model loginResponse {
  @visibility("read", "update")
  @path
  status: int32;
  token: string;
  exp: int32;
}

model userlistResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    id: int32;
    name: string;
    dealer: string;
    credit: int32;
  }[];
}

model ticketsallRequest {
  @visibility("read", "update")
  @path
  id: int32;
  startDate: int32;
  endDate: int32;
}
model ticketsallResponse {
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
    }[];
  };
}

model depositCancelResponse {
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
    status: int32;
    createdAt: string;
    updatedAt: string;
    spec: string;
  };
}

model dealergamesResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    data: [][];
    fields: [];
  };
}

model pageslocationRequest {
  @visibility("read", "update")
  @path
  id: int32;
  page: int32;
  limit: int32;
}

model pageslocationResponse {
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

model ChangestatusResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: [];
}

model settingsstagebingoemcasaResponse {
  @visibility("read", "update")
  @path
  status: int32;
  domain: string;
  data: {
    populerLeagues: {
      t: int32;
      c: int32;
    }[];
    popularSports: int32[];
    marketShowList: {};
    operatorid: int32;
    serverId: int32;
    logo: string;
    favicon: string;
    title: string;
    description: string;
    keyword: string;
    googleid: string;
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

model StaticDataResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    currencyList: [][];
    languages: {
      id: int32;
      name: string;
    }[];
  };
}
model CategoryResponse {
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

model statsgamesResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    data: [][];
    fields: [];
  };
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
  createdAt: [];
  limit: int32;
  order: string;
  orderAs: string;
  page: int32;
}
model pageRequest {
  @visibility("read", "update")
  @path
  id: int32;
  limit: int32;
  page: int32;
}
model pageResponse {
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
  meta: {
    total: int32;
    page: int32;
    limit: int32;
  };
}

model marketsResponse {
  @visibility("read", "update")
  @path
  status: int32;
  langs: {};
}

model dealerspanelResponse {
  @visibility("read", "update")
  @path
  status: int32;
  langs: {};
}

model selectionsResponse {
  @visibility("read", "update")
  @path
  status: int32;
  langs: {};
}

model statscompaniesResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    user: {
      opName: string;
      balance: int32;
      bonusBalance: int32;
      currency: string;
      lang: string;
      role_id: int32;
      bonusJson: {
        cashBackPercent: int32;
        moneyPercent: int32;
        cashOutPercent: int32;
        cancelTimeout: int32;
      };
      menu: {
        title: string;
        path: string;
        icon: string;
      }[];
      langs: string[];
      currencies: [];
      limits: {
        name: string;
        status: int32;
        fields: {
          name: string;
          type: string;
          value: int32 | string;
          options?: {
            text: string;
            value: int32;
          }[];
        }[];
      }[];
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
    };
  };
}

model dealersdataResponse {
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

model ViewResponse {
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
    logs: {
      id: int32;
      ip: string;
    }[];
    info: {
      firstname: string;
      lastlogin: int32;
    };
  };
}

// Banners

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

model bannerDataRequest {
  @visibility("read", "update")
  @path
  id: int32;
  limit: int32;
  page: int32;
  placeId: [];
}
model bannerDataResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    duration: 0;
    endDate: string;
    isDesktop: boolean;
    isKiosk: boolean;
    isMobile: boolean;
    isVisible: boolean;
    languageId: int32;
    operatorId: int32;
    placeId: int32;
    startDate: string;
  }[];
  meta: {
    total: int32;
    page: int32;
    limit: int32;
  };
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

// Popups

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

model popupDataRequest {
  @visibility("read", "update")
  @path
  id: int32;
  limit: int32;
  page: int32;
  placeId: [];
}
model popupDataResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
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
    languageId: int32;
    operatorId: int32;
    placeId: int32;
    startDate: string;
  }[];
  meta: {
    total: int32;
    page: int32;
    limit: int32;
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

model popupButtonRequest {
  @visibility("read", "update")
  @path
  id: int32;
  limit: int32;
  page: int32;
  dataId: [];
}
model popupButtonResponse {
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

@error
model Error {
  code: int32;
  message: string;
}

@route("/api/payment/withdraws/summary")
@tag("Payment")
interface withdrawsSummary {
  @post create(...DepositsPaymentSummaryRequest): DepositsPaymentSummarybResponse | Error;
}

@route("/api/payment/deposits/summary")
@tag("Payment")
interface DepositsSummary {
  @post create(...DepositsPaymentSummaryRequest): DepositsPaymentSummarybResponse | Error;
}
@route("/api/dealer/banners/places/filter")
@tag("Banners")
interface bannerPlace {
  @post create(...bannerPlacesRequest): bannerPlacesResponse | Error;
}
@route("/api/dealer/popup/places/filter")
@tag("Popups")
interface popupPlace {
  @post create(...popupPlacesRequest): popupPlacesResponse | Error;
}
@route("/api/dealer/banners/props/filter")
@tag("Banners")
interface bannerData {
  @post create(...bannerDataRequest): bannerDataResponse | Error;
}
@route("/api/dealer/popup/data/filter")
@tag("Popups")
interface popupsData {
  @post create(...popupDataRequest): popupDataResponse | Error;
}

@route("/api/dealer/banners/props/add")
@tag("Banners")
interface addBannerData {
  @post create(...addBannerDataRequest): addBannerDataResponse | Error;
}
@route("/api/dealer/popup/data/add")
@tag("Popups")
interface addPopupData {
  @post create(...addPopupDataRequest): addPopupDataResponse | Error;
}
@route("/api/dealer/popup/buttons/add")
@tag("Popups")
interface addPopupButton {
  @post create(...addPopupButtonRequest): addPopupButtonResponse | Error;
}
@route("/api/dealer/popup/tabs/add")
@tag("Popups")
interface addPopupTabs {
  @post create(...addPopupTabRequest): addPopupTabResponse | Error;
}

@route("/api/payment/operator/providers/edit")
@tag("Payment")
interface changePaymentProviderStatus {
  @post create(
    @path id: string,
    ...changeProvideStatusRequest
  ): changeProviderStatusbResponse | Error;
}

@route("/api/dealer/banners/props/edit")
@tag("Banners")
interface editBannerData {
  @post create(
    @path id: string,
    ...editBannerDataRequest
  ): editBannerDataResponse | Error;
}
@route("/api/dealer/popup/data/edit")
@tag("Popups")
interface editPopupData {
  @post create(
    @path id: string,
    ...addPopupDataRequest
  ): addPopupDataResponse | Error;
}
@route("/api/dealer/popup/buttons/edit")
@tag("Popups")
interface editPopupButton {
  @post create(
    @path id: string,
    ...addPopupButtonRequest
  ): addPopupButtonResponse | Error;
}
@route("/api/dealer/popup/tabs/edit")
@tag("Popups")
interface editPopupTab {
  @post create(
    @path id: string,
    ...addPopupTabRequest
  ): addPopupTabResponse | Error;
}
@route("/api/dealer/banners/props/delete")
@tag("Banners")
interface deleteBannerData {
  @get list(@path id: string): editBannerDataResponse | Error;
}
@route("/api/dealer/popup/data/delete")
@tag("Popups")
interface deletePopupData {
  @get list(@path id: string): addPopupDataResponse | Error;
}
@route("/api/dealer/popup/buttons/delete")
@tag("Popups")
interface deletePopupButton {
  @get list(@path id: string): addPopupButtonResponse | Error;
}
@route("/api/dealer/popup/tabs/delete")
@tag("Popups")
interface deletePopupTabs {
  @get list(@path id: string): addPopupTabResponse | Error;
}

@route("/api/dealer/banners/files/filter")
@tag("Banners")
interface bannerFiles {
  @post create(...bannerFileRequest): bannerFileResponse | Error;
}
@route("/api/dealer/popup/buttons/filter")
@tag("Popups")
interface popupButtons {
  @post create(...popupButtonRequest): popupButtonResponse | Error;
}

@route("/api/dealer/popup/tabs/filter")
@tag("Popups")
interface popupsTabs {
  @post create(...popupTabRequest): popupTabResponse | Error;
}

@route("/api/dealer/banners/files/add")
@tag("Banners")
interface addBannerFile {
  @post create(...addBannerFileRequest): addBannerFileResponse | Error;
}

@route("/api/dealer/banners/files/edit")
@tag("Banners")
interface editBannerFile {
  @post create(
    @path id: string,
    ...addBannerFileRequest
  ): addBannerFileResponse | Error;
}

@route("/api/dealer/banners/files/delete")
@tag("Banners")
interface deleteBannerFile {
  @get list(@path id: string): addBannerFileResponse | Error;
}

@route("/api/payment/providers")
@tag("Payment")
interface Providers {
  @get list(): ProvidersResponse[] | Error;
}

@route("/data/static/settings")
@tag("Static")
interface settingsstagebingoemcasa {
  @get list(@path domain: string): settingsstagebingoemcasaResponse[] | Error;
}

@route("/api/dealer/stats/cats")
@tag("Stats")
interface Category {
  @get list(): CategoryResponse[] | Error;
}

@route("/api/dealer/pages/location/edit")
@tag("Location")
interface locationEdit {
  @post create(
    @path id: string,
    ...locationEditRequest
  ): locationEditResponse | Error;
}

@route("/api/dealer/stats/games")
@tag("Stats")
interface statsgames {
  @get list(): statsgamesResponse[] | Error;
}

@route("/api/dealer/stats/companies")
@tag("Stats")
interface statscompanies {
  @get list(): statscompaniesResponse[] | Error;
}

@route("/api/dealer/staticdata")
@tag("Static")
interface Staticdata {
  @get list(): StaticDataResponse[] | Error;
}

@route("/api/auth/login")
@tag("Auth")
interface login {
  @post list(...loginRequest): loginResponse[] | Error;
}

@route("/api/dealer/incomeexpense/allsummary")
@tag("Dealer")
interface Allsummary {
  @post create(...AllsummaryRequest): AllsummaryRespons | Error;
}

@route("/api/dealer/pages/data/add")
@tag("Pages")
interface pageAdd {
  @post create(...pageAddRequest): pageAddResponse | Error;
}

@route("/api/dealer/pages/location/add")
@tag("Location")
interface locationAdd {
  @post create(...locationAddRequest): locationAddResponse | Error;
}

@route("/api/dealer/stats/list")
@tag("Stats")
interface statsList {
  @post create(...statsListRequest): statsListResponse | Error;
}

@route("/api/dealer/pages/data/filter")
@tag("Pages")
interface pageFilter {
  @post create(...pageFilterRequest): pageFilterResponse | Error;
}

@route("/api/dealer/pages/page/add")
@tag("Pages")
interface addpage {
  @post create(...addpageRequest): addpageResponse | Error;
}

@route("/api/dealer/tickets/all")
@tag("Tickets")
interface ticketsall {
  @post create(...ticketsallRequest): ticketsallResponse | Error;
}

@route("/api/payment/withdraws/filter")
@tag("Payment")
interface withdrawsFilter {
  @post create(...withdrawsFilterRequest): withdrawsFilterResponse | Error;
}

@route("/api/dealer/pages/page/edit")
@tag("Pages")
interface pageEdit {
  @post create(@path id: string, ...pageEditRequest): pageEdiResponse | Error;
}

@route("/api/dealer/pages/data/edit")
@tag("Pages")
interface dataEdit {
  @post create(@path id: string, ...dataEditRequest): dataEditResponse | Error;
}

@route("/api/dealer/games/addSpec")
@tag("Games")
interface addspecifically {
  @post create(...addspecificallyRequest): addspecificallyResponse | Error;
}

@route("/api/user/movements")
@tag("User")
interface Movements {
  @get list(
    @query startDate: int32,
    @query endDate: int32
  ): MovementsResponse[] | Error;
}

@route("/api/dealer/pages/page/delete")
@tag("Pages")
interface Delete {
  @get list(@path pageId: string): DeleteResponse[] | Error;
}

@route("/api/user/list")
@tag("User")
interface userlist {
  @get list(): userlistResponse[] | Error;
}

@route("/api/dealer/games")
@tag("Games")
interface dealergames {
  @get list(): dealergamesResponse[] | Error;
}

@route("/api/dealer/games/specs")
@tag("Games")
interface Specifically {
  @get list(): SpecificallyResponse[] | Error;
}

@route("/api/dealer/stats/sumall")
@tag("Stats")
interface Sumall {
  @post create(...SumallRequest): SumallResponse | Error;
}
@route("/api/dealer/games/cat")
@tag("Games")
interface Gamescategory {
  @post create(...GamescategoryRequest): GamescategoryResponse | Error;
}

@route("/api/payment/deposits/filter")
@tag("Payment")
interface depositsFilter {
  @post create(...depositsFilterRequest): depositsFilterResponse | Error;
}

@route("/api/dealer/pages/location/filter")
@tag("Location")
interface pageslocation {
  @post create(...pageslocationRequest): pageslocationResponse | Error;
}

@route("/api/payment/deposit/cancel")
@tag("Payment")
interface pageslocatdeposit {
  @post create(@path id: string): depositCancelResponse | Error;
}

@route("/api/dealer/pages/page/filter")
@tag("Pages")
interface pagefilter {
  @post create(...pageRequest): pageResponse | Error;
}

@route("/api/user/limit")
@tag("User")
interface Limit {
  @post create(@path id: string, ...LimitRequest): LimitRespons | Error;
}

@route("/api/user/changestatus")
@tag("User")
interface Changestatus {
  @post create(...ChangestatusRequest): ChangestatusResponse | Error;
}
@route("/api/user/credit")
@tag("User")
interface Credit {
  @post create(...CreditRequest): CreditResponse | Error;
}

@route("/api/dealer/pages/location/delete")
@tag("Pages")
interface locationDelete {
  @get read(@path id: string): locationDeleteResponse | Error;
}

@route("/api/user/view")
@tag("User")
interface View {
  @get read(@path id: string): ViewResponse | Error;
}

@route("/v1/lang/get/markets")
@tag("Lang")
interface markets {
  @get read(@path lang: string): marketsResponse | Error;
}

@route("/api/dealer/pages/data/delete")
@tag("Pages")
interface dataDelete {
  @get read(@path dataId: string): dataDeleteResponse | Error;
}

@route("/v1/lang/get/selections/")
@tag("Lang")
interface selections {
  @get read(@path lang: string): selectionsResponse | Error;
}

@route("/v1/lang/get/dealerspanel")
@tag("Lang")
interface dealerspanel {
  @get read(@path lang: string): dealerspanelResponse | Error;
}

@route("/user/register")
@tag("User")
interface Registererror {
  @post create(...RegistererrorRequest): RegistererrorResponse | Error;
}

@route("/api/dealer/tickets/get")
@tag("Tickets")
interface Dealertickets {
  @get read(@path Id: string): DealerticketsResponse | Error;
}
