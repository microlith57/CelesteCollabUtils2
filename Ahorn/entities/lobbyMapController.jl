module CollabUtils2LobbyMapController

using ..Ahorn, Maple

@mapdef Entity "CollabUtils2/LobbyMapController" LobbyMapController(
    x::Integer, y::Integer,
    mapTexture::String="", totalMaps::Integer=10, customMarkers::String="",
    warpIcon::String="CollabUtils2/lobbies/warp", rainbowBerryIcon::String="CollabUtils2/lobbies/rainbowBerry",
    heartDoorIcon::String="CollabUtils2/lobbies/heartgate", gymIcon::String="CollabUtils2/lobbies/gym",
    mapIcon::String="CollabUtils2/lobbies/map", journalIcon::String="CollabUtils2/lobbies/journal",
    showWarps::Bool=true, showRainbowBerry::Bool=true, showHeartDoor::Bool=true, showGyms::Bool=true,
    showMaps::Bool=true, showJournals::Bool=true, showHeartCount::Bool=true
)

const placements = Ahorn.PlacementDict(
    "Lobby Map Controller (Collab Utils 2)" => Ahorn.EntityPlacement(
        LobbyMapController
    )
)

const sprite = "CollabUtils2/editor_lobbymapmarker"

function Ahorn.selection(entity::LobbyMapController)
    x, y = Ahorn.position(entity)
    return Ahorn.getSpriteRectangle(sprite, x, y)
end

Ahorn.render(ctx::Ahorn.Cairo.CairoContext, entity::LobbyMapController, room::Maple.Room) = Ahorn.drawSprite(ctx, sprite, 0, 0)

end