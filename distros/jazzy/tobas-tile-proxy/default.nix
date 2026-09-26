
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-tobas-tile-proxy";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_tile_proxy/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "0057072f511eab61fff1b4046bc62d4885bf2bcd050c62d09a9d99ef663d9177";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.fastapi python3Packages.httpx python3Packages.uvicorn ];

  meta = {
    description = "HTTP map-tile proxy server for the Qt Location OpenStreetMap plugin.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
