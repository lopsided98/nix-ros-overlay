
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-tobas-tile-proxy";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_tile_proxy/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "b28d3eb9bcdbab4188e00fa934a96d9dd4deef5b8a43aed7a5daa47f24380a5d";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.fastapi python3Packages.httpx python3Packages.uvicorn ];

  meta = {
    description = "HTTP map-tile proxy server for the Qt Location OpenStreetMap plugin.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
