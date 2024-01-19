
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gst_all_1, nettools, networkmanager, pkg-config, procps, unixtools }:
buildRosPackage {
  pname = "ros-noetic-clpe";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/canlab-co/CLPE_G_NVP2650D_SDK-ros-release/archive/release/noetic/clpe/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "45810c0873214b49d02b4e810a2172b24931239eee4a53686c3afaad065a2277";
  };

  buildType = "catkin";
  buildInputs = [ catkin pkg-config ];
  propagatedBuildInputs = [ gst_all_1.gst-plugins-base nettools networkmanager procps unixtools.ping ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''clpe sdk'';
    license = with lib.licenses; [ asl20 ];
  };
}
