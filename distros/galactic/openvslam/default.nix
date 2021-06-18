
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, glog, libg2o, libyamlcpp, opencv3 }:
buildRosPackage {
  pname = "ros-galactic-openvslam";
  version = "0.2.3-r3";

  src = fetchurl {
    url = "https://github.com/OpenVSLAM-Community/openvslam-release/archive/release/galactic/openvslam/0.2.3-3.tar.gz";
    name = "0.2.3-3.tar.gz";
    sha256 = "942efc34b17b39cd4eb9051f757c00c8c5efb66b1acb09a9beae736189f9b74e";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ eigen glog libg2o libyamlcpp opencv3 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''OpenVSLAM: A Versatile Visual SLAM Framework'';
    license = with lib.licenses; [ "2-clause BSD" ];
  };
}
