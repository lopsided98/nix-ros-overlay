
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-tobas-tile-proxy";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_tile_proxy/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "7ee65dac8902f21f744838bf057ab7c1d66be13f23493eaedadd9096a4dd6373";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.fastapi python3Packages.httpx python3Packages.uvicorn ];

  meta = {
    description = "HTTP map-tile proxy server for the Qt Location OpenStreetMap plugin.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
