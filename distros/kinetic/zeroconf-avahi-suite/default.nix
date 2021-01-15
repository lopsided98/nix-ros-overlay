
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, zeroconf-avahi, zeroconf-avahi-demos }:
buildRosPackage {
  pname = "ros-kinetic-zeroconf-avahi-suite";
  version = "0.2.3";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/zeroconf_avahi_suite-release/archive/release/kinetic/zeroconf_avahi_suite/0.2.3-0.tar.gz";
    name = "0.2.3-0.tar.gz";
    sha256 = "460d5396cb3eb449b8585046857c5751c3f32b208e38dca0eb77aa931a8e8b39";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ zeroconf-avahi zeroconf-avahi-demos ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Suite of packages supporing the avahi implementation of zeroconf for ros.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
