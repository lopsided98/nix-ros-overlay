
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-tobas-tile-proxy";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_tile_proxy/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "20b8b77fbd93a6bf62f60657a2871bff6530387ba84d41fd773b0ed55744eef0";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.fastapi python3Packages.httpx python3Packages.uvicorn ];

  meta = {
    description = "HTTP map-tile proxy server for the Qt Location OpenStreetMap plugin.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
