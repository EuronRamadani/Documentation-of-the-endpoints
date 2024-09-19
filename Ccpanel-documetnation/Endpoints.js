export default {
    odds_data: '/data/static/lang/fullodds/tr', //done
    dealer_status: '/cc/ops/changestatus/{serverId}', //done
    dealer_add: '/cc/ops/add/{serverId}', // done
    dealer_movements: '/cc/movements/{serverId}/{currencyId}',
    dealer_movements_id: '/cc/movements/{serverId}/{currencyId}/{operatorId}',
    user_checkname: '/cc/users/search/{serverId}',
    user_add: '/cc/users/add/{serverId}',
    user_list: '/cc/users/list/{serverId}',
    user_view: '/cc/users/view/{serverId}/{userId}',
    user_credit: '/cc/credit/user/{type}',
    coupon_dontresult: '/cc/coupon/dontResultItYet', //DONE
    dealer_limit: '/cc/limit/op/{serverId}/{dealerId}',
    user_movements: '/cc/movements/{serverId}/{currencyId}',
    user_transactions: '/cc/expenses/list',
    get_parts: '/v1/lang/parts',
    get_lang: '/v1/lang/get/{part}/{lang}', //DONE
    get_part: '/cc/lang/{part}/{lang}',
    set_part: '/v1/lang/part/add',
    delete_lang: '/v1/lang/part/delete',
    user_change_pass: '/cc/users/changepass',
    dealer_change_pass: '/cc/ops/changepass',
    coupon_cancel: '/cc/coupon/cancelCoupon',// DONE
    get_sports_lang: '/cc/lang/sports/{lang}', //DONE
    get_cat_lang: '/cc/lang/cat/{lang}',
    get_tours_lang: '/cc/lang/tours/{lang}',
    get_cattours_lang: '/cc/lang/cattours/{sportid}/{lang}', //DONE
    get_games: '/cc/games/games',
    get_game: '/cc/games/game/{id}',
    add_game: '/cc/games/add/game',
    edit_game: '/cc/games/edit/game/{id}',
    add_cat: '/cc/games/add/cat',
    add_comp: '/cc/games/add/company',
    edit_comp: '/cc/games/edit/company/{id}', //DONE
    upload_image: '/cc/banners/upload',
    stats_sum: '/cc/stats/sum',
    get_game_limit_op: '/cc/games/limit/{serverId}/{opId}',
    del_game_limit: '/cc/games/limitdel/{type}/{part}',
    paybonus_add: '/cc/paybonus/op/add',
    paybonus_remove: '/cc/paybonus/op/remove',
    get_domain_settings: '/cc/settings/one/{domain}',
    add_domain_settings: '/cc/settings/new/{domain}',
    edit_domain_settings: '/cc/settings/edit/{domain}',
    del_domain_settings: '/cc/settings/del/{domain}',
    add_domain_alias: '/cc/settings/alias/new/{domain}',
    del_domain_alias: '/cc/settings/alias/del/{domain}',
    get_domain_alias: '/cc/settings/alias/one/{domain}',
    add_market_id: '/cc/marketlist/add/{marketName}',
    remove_market_id: '/cc/marketlist/del/{marketName}',
    // banner all services
    banner_upload: '/cc/banners/upload',
    banner_places_delete: '/cc/banners/places/delete/{placesId}', //DONE
    banner_props: '/cc/banners/props',
    banner_files_add: '/cc/banners/files/add',
    banner_files_edit: '/cc/banners/files/edit/{fileId}',
    banner_files_delete: '/cc/banners/files/delete/{fileId}',
    // popup all services
    popup_upload: '/cc/popup/upload',
    popup_places_filter: '/cc/popup/places/filter',
    popup_places_add: '/cc/popup/places/add',
    popup_places_delete: '/cc/popup/places/delete/{placeId}',
    popup_data: '/cc/popup/data',
    popup_data_filter: '/cc/popup/data/filter', //DONE
    popup_data_add: '/cc/popup/data/add',
    popup_data_edit: '/cc/popup/data/edit/{dataId}',
    popup_data_delete: '/cc/popup/data/delete/{dataId}',
    popup_buttons: '/cc/popup/buttons',
    popup_buttons_filter: '/cc/popup/buttons/filter', //DONE
    popup_buttons_add: '/cc/popup/buttons/add', //DONE
    popup_buttons_edit: '/cc/popup/buttons/edit/{buttonId}',
    popup_buttons_delete: '/cc/popup/buttons/delete/{buttonId}',
    popup_tabs: '/cc/popup/tabs',
    popup_tabs_filter: '/cc/popup/tabs/filter',
    popup_tabs_add: '/cc/popup/tabs/add',
    popup_tabs_edit: '/cc/popup/tabs/edit/{tabId}',
    popup_tabs_delete: '/cc/popup/tabs/delete/{tabId}',
    reload_lang: '/v1/local/reloadLangs',
    reload_match: '/v1/local/reloadMatches',
    oddcoin: '/cc/marketlimit/{serverId}/{opid}',
    games_order: '/cc/games/op/{opid}',
    games_status: '/cc/games/op/{opid}/status', //DONE
    // payments
    payment_add_provider: '/cc/payment/add/provider', // done
    payment_add_operator: '/cc/payment/add/operator',
    payment_remove_operator: '/cc/payment/rem/operator',
    payment_list_operator_all: '/cc/payment/list',

    // operator games

    // pages services location
    page_location_list: '/cc/pages/location',
    page_location_add: '/cc/pages/location/add', // done
    page_location_delete: '/cc/pages/location/delete/{locationId}',//done

    // pages services page
    page_list: '/cc/pages/page',
    page_add: '/cc/pages/page/add',//done
    page_edit: '/cc/pages/page/edit/{pageId}', //DONE
    page_delete: '/cc/pages/page/delete/{pageId}', //done


    // pages services page
    page_data_list: '/cc/pages/data',
    page_data_delete: '/cc/pages/data/delete/{dataId}',


}