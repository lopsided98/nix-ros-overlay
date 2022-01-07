
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, glog, libg2o, libyamlcpp, opencv3 }:
buildRosPackage {
  pname = "ros-foxy-openvslam";
  version = "0.2.4-r2";

  src = fetchurl {
    url = "https://github.com/OpenVSLAM-Community/openvslam-release/archive/release/foxy/openvslam/0.2.4-2.tar.gz";
    name = "0.2.4-2.tar.gz";
    sha256 = "8e97801d84c47e9eee98d2a9b03d4f98b6dd1d383808982c043d1b47842c65a3";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ eigen glog libg2o libyamlcpp opencv3 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''OpenVSLAM: A Versatile Visual SLAM Framework'';
    license = with lib.licenses; [ "2-clause BSD" ];
  };
}
