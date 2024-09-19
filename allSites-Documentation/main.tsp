import "@typespec/http";

using TypeSpec.Http;

@service({
  title: "Service",
  version: "1.0.0",
})
@server("https://core.datamixonline.com", "Stage")
@server("https://core-v1.datamixonline.com", "Production")
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

model PopupResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    name: string;
    widthMax: int32;
    heightMax: int32;
    MultiLanguage: boolean;
    Responsive: boolean;
    header: string;
    hasTabs: boolean;
    hasButtons: boolean;
    hasHeader: boolean;
    headerIsUrl: boolean;
    headerIsText: boolean;
    headerIsImage: boolean;
    headerIsVideo: boolean;
    headerIsIframe: boolean;
    headerIsHtml: boolean;
    buttons: {
      text: string;
      name: string;
      url: string;
      color: string;
      viewOrder: int32;
    }[];
    tabs: {
      text: string;
      name: string;
      viewOrder: int32;
    }[];
  };
}

model InfoResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    balance: int32;
    currency: string;
    username: string;
    firstname: string;
    lastname: string;
    type: string;
    jackpots: [];
    siteCom: int32;
    bonus: {
      cashBackPercent: int32;
      moneyPercent: int32;
      cashOutPercent: int32;
      cancelTimeout: int32;
    };
    limits: {
      coupon: {
        minOdd: int32;
        maxOdd: int32;
        minTotalOdd: int32;
        maxTotalOdd: int32;
        sameCoupon: int32;
        sameMatch: int32;
      };
      stakes: {
        type: string;
        maxStake: int32;
        minStake: int32;
        maxPay: int32;
        minTip: int32;
        betLimit: int32;
      }[];
    };
    permissions: string[];
  };
}

model PagesLocationsResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    id: int32;
    name: string;
    viewOrder: int32;
    parentId: int32;
    pages: {
      prefix: string;
      name: string;
      id: int32;
      pageOrder: int32;
      locationOrder: int32;
    }[];
  }[];
}

model TrackierLoginResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    id: int32;
 
  }[];
}

model ForgetpasswordRequest {
  @visibility("read", "update")
  @path
  id: string;
  lang: string;
  username: string;
  tckno: string;
}

model PagesResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: int32;
    createdAt: string;
    hasCss: boolean;
    hasJs: boolean;
    html: string;
    htmlFormatted: boolean;
    isDesktop: boolean;
    isIframe: boolean;
    isKiosk: boolean;
    isMobile: boolean;
    isNewWindow: boolean;
    isVisible: boolean;
    isUrl: boolean;
    languageId: int32;
    markDownFormatted: boolean;
    pageId: int32;
    summary: string;
    text: string;
    updatedAt: string;
  }[];
}

model MarketgroupResponse {
  @visibility("read", "update")
  @path
  status: int32;
  marketGroups: [string, [int32, int32[]][]][];
  specialGroups: [
    string,
    {
      sp: string[];
    }
  ][];
  marketOrder: string[];
  bannedMarkets: int32[];
}

model BannersResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    name: string;
    widthMax: int32;
    heightMax: int32;
    Slider: boolean;
    Banner: boolean;
    MultiFile: boolean;
    MultiLanguage: boolean;
    Textable: boolean;
    Responsive: boolean;
    duration: int32;
    files: {
      file: string;
      text: string;
      url: string;
      isIframe: boolean;
      isNewWindow: boolean;
      hasButton: boolean;
    }[];
  };
}

model ProvidersResponse {
  @visibility("read", "update")
  @path
  status: int32;
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

model DepositStatusResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: string;
    amount: string;
    cashbox: string;
    cureId: string;
    operatorId: string;
    paidamount: string;
    processor: string;
    serverId: string;
    spec: string;
    status: string;
    updateAt: string;
    userId: string;
  };
}

model WithdrawStatusResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    Id: string;
    amount: string;
    cashbox: string;
    createAt: string;
    cureId: string;
    operatorId: string;
    paidamount: string;
    processor: string;
    serverId: string;
    spec: string;
    status: string;
    updateAt: string;
    userId: string;
  };
}

model TournamentRequest {
  @visibility("read", "update")
  @path
  id: int32;
  reqId: string;
  sportId: int32;
  lang: string;
  startDate: string;
  endDate: string;
}

model TournamentResponse {
  @visibility("read", "update")
  @path
  status: int32;
  results: {
    n: string;
    id: int32;
    c: int32;
    lc: int32;
  }[];
}

model CategoriesRequest {
  @visibility("read", "update")
  @path
  id: int32;
  reqId: string;
  sportId: int32;
  lang: string;
  startDate: string;
  endDate: string;
}

model CategoriesResponse {
  @visibility("read", "update")
  @path
  status: int32;
  results: {
    n: string;
    id: int32;
    c: int32;
    lc: int32;
  }[];
}

model SportsRequest {
  @visibility("read", "update")
  @path
  id: int32;
  reqId: string;
  lang: string;
  startDate: string;
  endDate: string;
}

model SportsResponse {
  @visibility("read", "update")
  @path
  status: int32;
  results: {
    title: string;
    status: int32;
    id: int32;
    matchCount: int32;
  }[];
}

model ExpensesRequest {
  @visibility("read", "update")
  @path
  id: int32;
  lang: string;
  filter: {
    startDate: int32;
    endDate: int32;
  };
}

model ExpensesResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: [];
  fields: {
    transType: string[];
    ticketType: string[];
  };
  names: string[];
}

model MovesRequest {
  @visibility("read", "update")
  @path
  id: int32;
  startDate: int32;
  endDate: int32;
}

model MovesResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    amount: int32;
    type: int32;
    datecompleted: int32;
  }[];
}

model selectionsResponse {
  @visibility("read", "update")
  @path
  status: int32;
  langs: {};
}

model TicketsRequest {
  @visibility("read", "update")
  @path
  id: int32;
  endDate: string;
  lang: string;
  startDate: string;
}

model TicketsResponse {
  @visibility("read", "update")
  @path
  status: int32;
  tickets: {
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
    cashOutData: {
      p: string;
      o: int32;
      v: {
        status: int32;
        canCashout: boolean;
        ticketType: string;
      };
    }[];
    cancel: boolean;
  }[];
  userid: int32;
  operatorid: int32;
}

model AuthGuestRequest {
  @visibility("read", "update")
  @path
  id: int32;
  lang: string;
  serverId: int32;
}

model AuthGuestResponse {
  @visibility("read", "update")
  @path
  exp: int32;
  status: int32;
  token: {
    exp: int32;
    status: int32;
    token: string;
  };
}

model DepositsFilterRequest {
  @visibility("read", "update")
  @path
  id: int32;
  createdAt: [];
  lang: string;
  limit: int32;
  order: string;
  orderAs: string;
  page: int32;
}

model DepositsFilterResponse {
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
  }[];
  meta: {
    limit: int32;
    page: int32;
    total: string;
  };
}

model WithdrawsFilterRequest {
  @visibility("read", "update")
  @path
  id: int32;
  createdAt: [];
  lang: string;
  limit: int32;
  order: string;
  orderAs: string;
  page: int32;

}

model WithdrawsFilterResponse {
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
  }[];
  meta: {
    limit: int32;
    page: int32;
    total: string;
  };
}

model limitRequest {
  @visibility("read", "update")
  @path
  id: int32;
  sports: int32[][];
}

model frontendLangResponse {
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
    };
    menu: {
      title: string;
      path: string;
      icon: string;
    }[];
    langs: string[];
    currencies: [];
    limits: {
      make_coupon: {
        name: string;
        status: int32;
        fields: {
          value: int32;
          type: string;
          name: string;
        }[];
      }[];
    };
    permissions: {
      status: boolean;
    };
  };
}

model limitResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    status: int32;
    id: int32;
    server: int32;
    oddLimit: {
      minOdd: int32;
      maxOdd: int32;
      minTotalOdd: int32;
      maxTotalOdd: int32;
      sameCoupon: int32;
      sameMatch: int32;
    };
    couponLimits: {
      type: string;
      maxStake: int32;
      minStake: int32;
      maxPay: int32;
      minTip: int32;
      betLimit: int32;
    }[];
  };
}

model LiveOddsShortRequest {
  @visibility("read", "update")
  @path
  id: int32;
  getFull: int32;
  lang: string;
  matchId: int32;
}

model LiveOddsShortResponse {
  @visibility("read", "update")
  @path
  status: int32;
  match: {
    id: int32;
    tid: int32;
    cid: int32;
    sid: int32;
    isa: boolean;
    cn: string;
    tn: string;
    d: string;
    ms: string;
    ti: int32;
    tir: string;
    t: string;
    iss: boolean;
    isv: boolean;
    hid: int32;
    aid: int32;
    eid: int32;
    h: string;
    a: string;
    s: int32;
  };
  odds: {
    id: int32;
    mid: int32;
    hv: int32;
    av: int32;
    iss: boolean;
    isv: boolean;
    sp: string;
    mb: int32;
    sq: int32;
    ps: int32;
    s: {
      id: int32;
      sid: int32;
      hv: int32;
      av: int32;
      v: int32;
      sp: string;
    }[];
  }[];
}

model LivesShortRequest {
  @visibility("read", "update")
  @path
  id: int32;
  sportId: int32;
  lang: string;
  odds: [int32, int32][];
  limit: int32;
  startDate: string;
  endDate: string;
}

model LivesShortResponse {
  @visibility("read", "update")
  @path
  m: {
    id: int32;
    hid: int32;
    h: string;
    aid: int32;
    a: string;
    isa: boolean;
    bs: string;
    cid: int32;
    cn: string;
    ec: int32;
    la: int32;
    iss: boolean;
    isv: boolean;
    d: string;
    ms: string;
    ti: int32;
    tie: int32;
    tir: string;
    pr: int32;
    prc: int32;
    pl: int32;
    sid: int32;
    tid: int32;
    tn: string;
    s: int32;
    scr: {
      h: int32;
      a: int32;
    };
    p: {
      home: int32;
      away: int32;
    }[];
    stt: {
      c: {
        r: {
          h: int32;
          a: int32;
        };
        y: {
          h: int32;
          a: int32;
        };
      };
      cr: {
        h: int32;
        a: int32;
      };
      p: {
        h: int32;
        a: int32;
      };
    };
    o: {
      id: int32;
      mid: int32;
      hv: int32;
      av: int32;
      iss: boolean;
      isv: boolean;
      sp: string;
      mb: int32;
      sq: int32;
      s: {
        id: int32;
        sid: int32;
        hv: int32;
        av: int32;
        v: int32;
      }[];
    }[];
  }[];
  s: {
    sn: string;
    s: int32;
    sid: int32;
    live: int32;
    mc: int32;
  }[];
  status: boolean;
  sid: int32;
  c: int32;
}

model marketsResponse {
  @visibility("read", "update")
  @path
  status: int32;
  langs: {};
}

model MatchesShortRequest {
  @visibility("read", "update")
  @path
  id: int32;
  sportId: int32;
  lang: string;
  odds: [int32, int32][];
  limit: int32;
  startDate: string;
  endDate: string;
  isStarted: boolean;
  oddLimit: int32;
}

model MatchesShortResponse {
  @visibility("read", "update")
  @path
  status: int32;
  request: {
    noResult: boolean;
    order: int32;
    SportId: int32;
    oddLimit: int32;
    lang: string;
    limit: int32;
    startDate: string;
    endDate: string;
    odds: [int32, int32][];
  };
  results: {
    id: int32;
    hid: int32;
    h: string;
    aid: int32;
    a: string;
    isa: boolean;
    bs: string;
    cid: int32;
    cn: string;
    ec: int32;
    la: int32;
    iss: boolean;
    isv: boolean;
    d: string;
    ms: string;
    ti: int32;
    tie: int32;
    tir: string;
    pr: int32;
    prc: int32;
    pl: int32;
    sid: int32;
    tid: int32;
    tn: string;
    s: int32;
    scr: {
      h: int32;
      a: int32;
    };
    p: {
      home: int32;
      away: int32;
    }[];
    stt: {
      c: {
        r: {
          h: int32;
          a: int32;
        };
        y: {
          h: int32;
          a: int32;
        };
      };
      cr: {
        h: int32;
        a: int32;
      };
      p: {
        h: int32;
        a: int32;
      };
    };
    o: {
      id: int32;
      mid: int32;
      hv: int32;
      av: int32;
      iss: boolean;
      isv: boolean;
      sp: string;
      mb: int32;
      sq: int32;
      s: {
        id: int32;
        sid: int32;
        hv: int32;
        av: int32;
        v: int32;
      }[];
    }[];
  }[];
}

model GamesResponse {
  @visibility("read", "update")
  @path
  id: int32;
  status: int32;
  data: {
    id: int32;
    name: string;
    compId: int32;
    category: int32;
    status: int32;
    logo: string;
    specs: int32;
  }[];
}

model OpenSpecificGameResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: OpenSpecificGameData;
}

model OpenSpecificGameData {
  result: {
    url: string | null;
  };
  gameDetails: {
    id: int32;
    name: string;
    company: string;
    category: int32;
    catName: string;
    status: int32;
    specs: string;
    api: string;
    logo: string;
    compId: int32;
    gameOrder: int32;
    options: string;
    extras: {
      gameId: string;
      providerId: string;
      providerSlug: string;
    };
    gameid: string;
    commission: string;
  };
  user: {
    id: int32;
    operatorid: int32;
    websiteid: int32;
    name: string;
    status: int32;
    systemStatus: int32;
    systemArray: int32;
    specs: int32;
    levels: int32[];
    operator: {
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
      currencyIds: [];
      currencyId: int32;
      description: string;
      createdAt: int32;
      updatedAt: int32;
      closedAt: int32;
    };
    limits: {
      provider: [];
      category: [];
      game: [];
    };
    balance: int32;
  };
  gp: {
    data: {
      specs: int32;
      game: {
        id: int32;
        gameid: string;
        name: string;
        company: string;
        compId: int32;
        category: int32;
        status: int32;
        specs: string;
        api: string;
        options: string;
        extras: {
          gameId: string;
          providerId: string;
          providerSlug: string;
        };
        round: int32;
        commission: string;
      };
      user: {
        id: int32;
        serverId: int32;
        operatorId: int32;
        username: string;
        firstname: string;
        lastname: string;
        email: string;
        currency: string;
        balance: int32;
        lang: string;
      };
      id: string;
    };
  };
}

model SpecSpecificGameResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: SpecSpecificGameData[];
}

model SpecSpecificGameData {
  id: int32;
  name: string;
  compId: int32;
  category: int32;
  status: int32;
  logo: string;
  specs: int32;
}

model SpecGamesResponse {
  @visibility("read", "update")
  @path
  id: int32;
  status: int32;
  data: SpecGamesData[];
}

model SpecGamesData {
  id: int32;
  name: string;
}

model CompanyResponse {
  @visibility("read", "update")
  @path
  id: int32;
  status: int32;
  data: {
    id: int32;
    cmpType: int32;
    name: string;
    specs: 0;
    totalGames: string;
    category: int32;
    logo: string;
  }[];
}

model CategoryResponse {
  @visibility("read", "update")
  @path
  id: int32;
  status: int32;
  data: {
    id: int32;
    catType: int32;
    name: string;
    specs: string;
    totalGames: string;
  }[];
}

model CompanyIdResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    id: int32;
    name: string;
    compId: int32;
    category: int32;
    status: int32;
    logo: string;
  }[];
}

model LoginRequest {
  @visibility("read", "update")
  @path
  id: int32;
  lang: string;
  password: string;
  serverId: int32;
  username: string;
}
model LoginResponse {
  @visibility("read", "update")
  @path
  exp: int32;
  status: int32;
  token: string;
}

model RegisterRequest {
  @visibility("read", "update")
  @path
  birthdate: string;
  cpf: string;
  email: string;
  gsm: string;
  lang: string;
  name: string;
  newpassword: string;
  password: string;
  surname: string;
}
model CpfCheckRequest {
  @visibility("read", "update")
  @path
  int: int32;
  lang: string;
}

model CpfCheckResponse {
  @visibility("read", "update")
  @path
  status: int32;
  data: {
    cpf: string;
    name: string;
    birth_date: string;
  };
}

model ChangePasswordRequest {
  @visibility("read", "update")
  @path
  int: int32;
  password: string;
  newpassword: string;
}
model ChangePasswordResponse {
  @visibility("read", "update")
  @path
  newpassword: string;
}

model RegisterResponse {
  @visibility("read", "update")
  @path
  birthdate: string;
  cpf: string;
  email: string;
}

@error
model Error {
  code: int32;
  message: string;
}

@route("/game/list/cats")
@tag("Games")
interface Category {
  @get list(): CategoryResponse | Error;
}

@route("/pre/categories")
@tag("Games")
interface Categories {
  @post create(...CategoriesRequest): CategoriesResponse | Error;
}

@route("/userapi/limit")
@tag("Userapi")
interface Limit {
  @post create(...limitRequest): limitResponse | Error;
}

@route("/game/list/games")
@tag("Games")
interface GamesList {
  @get list(): GamesResponse | Error;
}

@route("/data/static/marketgroup")
@tag("Data")
interface Marketgroup {
  @get list(): MarketgroupResponse | Error;
}
@route("v1/lang/get/selections")
@tag("Lang")
interface selections {
  @get read(@path lang: string): selectionsResponse | Error;
}

@route("/game/list/specsgames")
@tag("Games")
interface SpecGame {
  @get read(@path id: string): SpecSpecificGameResponse | Error;
}

@route("/game/open")
@tag("Games")
interface OpenGame {
  @get read(@path id: string): OpenSpecificGameResponse | Error;
}

@route("/data/static/pages/locations")
@tag("Data")
interface PagesLocations {
  @get read(
    @path type: string,
    @path lang: string,
    @path session: string
  ): PagesLocationsResponse | Error;
}

@route("/data/static/popup")
@tag("Data")
interface Popup {
  @get read(
    @path name: string,
    @path type: string,
    @path lang: string,
    @path session: string
  ): PopupResponse | Error;
}

@route("/data/static/banners")
@tag("Data")
interface Banner {
  @get read(
    @path name: string,
    @path type: string,
    @path lang: string,
    @path session: string
  ): BannersResponse | Error;
}

@route("/data/static/pages")
@tag("Data")
interface Pages {
  @get read(
    @path name: string,
    @path type: string,
    @path lang: string,
    @path session: string
  ): PagesResponse | Error;
}

@route("matchesshort")
@tag("Games")
interface MatchesShort {
  @post create(...MatchesShortRequest): MatchesShortResponse | Error;
}

@route("/pre/sports")
@tag("Games")
interface Sports {
  @post create(...SportsRequest): SportsResponse | Error;
}

@route("liveoddsshort")
@tag("Games")
interface LiveOddsShort {
  @post create(...LiveOddsShortRequest): LiveOddsShortResponse | Error;
}

@route("livesshort")
@tag("Games")
interface LivesShort {
  @post create(...LivesShortRequest): LivesShortResponse | Error;
}

@route("userapi/payment/deposits/filter")
@tag("Userapi")
interface DepositsFilter {
  @post create(...DepositsFilterRequest): DepositsFilterResponse | Error;
}

@route("userapi/payment/withdraws/filter")
@tag("Userapi")
interface WithdrawsFilter {
  @post create(...WithdrawsFilterRequest): WithdrawsFilterResponse | Error;
}

@route("/game/list/specs")
@tag("Games")
interface SpecGamesList {
  @get list(): SpecGamesResponse | Error;
}

@route("/game/list/companies")
@tag("Games")
interface Company {
  @get list(): CompanyResponse | Error;
}

@route("/v1/ticketcreate/tickets")
@tag("Games")
interface Tickets {
  @get list(...TicketsRequest): TicketsResponse | Error;
}

@route("/userapi/moves")
@tag("Userapi")
interface Moves {
  @get list(...MovesRequest): MovesResponse | Error;
}

@route("/userapi/payment/providers")
@tag("Games")
interface Providers {
  @get list(): ProvidersResponse | Error;
}

@route("/v1/lang/get/markets")
@tag("Lang")
interface markets {
  @get read(@path lang: string): marketsResponse | Error;
}

@route("/v1/lang/get/frontend")
@tag("Lang")
interface frontendLang {
  @get read(@path lang: string): frontendLangResponse | Error;
}

@route("/game/list/company")
@tag("Games")
interface SpecificCompany {
  @get read(@path id: string): CompanyIdResponse | Error;
}
@route("/userapi/payment/deposits/status")
@tag("Userapi")
interface DepositStatus {
  @get read(@path id: string): DepositStatusResponse | Error;
}

@route("/userapi/payment/withdraws/status")
@tag("Userapi")
interface WithdrawStatus {
  @get read(@path id: string): WithdrawStatusResponse | Error;
}
@route("/auth/user/login")
@tag("LoginRegister")
interface Login {
  @post create(...LoginRequest, @header Origin?: string): LoginResponse | Error;
}
@route("/userapi/trackier/login")
@tag("LoginRegister")
interface TrackierLogin {
  @get read(): TrackierLoginResponse | Error;
}

@route("/userapi/expenses/list")
@tag("Userapi")
interface Expenses {
  @post create(...ExpensesRequest): ExpensesResponse | Error;
}

@route("/userapi/data/info")
@tag("Userapi")
interface Info {
  @get list(): InfoResponse | Error;
}

@route("/user/register")
@tag("LoginRegister")
interface Register {
  @post create(...RegisterRequest): RegisterResponse | Error;
}

@route("/api/user/auth/guest")
@tag("LoginRegister")
interface Guest {
  @post create(
    ...AuthGuestRequest,
    @header Origin?: string
  ): AuthGuestResponse | Error;
}

@route("/user/register/forgetpassword")
@tag("LoginRegister")
interface Forgetpassword {
  @post create(...ForgetpasswordRequest): ForgetpasswordRequest | Error;
}

@route("/pre/tournaments")
@tag("Games")
interface Tournament {
  @post create(...TournamentRequest): TournamentResponse | Error;
}

@route("/user/register/check/")
@tag("LoginRegister")
interface CpfCheck {
  @post create(@path cpf: string, ...CpfCheckRequest): CpfCheckResponse | Error;
}
@route("user/register/changepassword")
@tag("LoginRegister")
interface ChangePassword {
  @post create(...ChangePasswordRequest): ChangePasswordResponse | Error;
}
