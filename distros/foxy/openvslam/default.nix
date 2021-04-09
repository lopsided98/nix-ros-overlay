
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, glog, libg2o, libyamlcpp, opencv3 }:
buildRosPackage {
  pname = "ros-foxy-openvslam";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/OpenVSLAM-Community/openvslam-release/archive/release/foxy/openvslam/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "5f1d354d73dd28cb48d46d4a7fb3d56de183ed292392c5dfdefc0e733898e9ee";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ eigen glog libg2o libyamlcpp opencv3 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''OpenVSLAM: A Versatile Visual SLAM Framework'';
    license = with lib.licenses; [ "2-clause BSD" ];
  };
}
