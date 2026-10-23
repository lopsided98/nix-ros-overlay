
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-tobas-tile-proxy";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_tile_proxy/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "373b19c7456dcc0998f75d2b19ba1f33f27f50bcadd21b7e5baf0383d6b39bfa";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.fastapi python3Packages.httpx python3Packages.uvicorn ];

  meta = {
    description = "HTTP map-tile proxy server for the Qt Location OpenStreetMap plugin.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
