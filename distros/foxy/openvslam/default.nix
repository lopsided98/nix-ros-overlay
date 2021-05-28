
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, glog, libg2o, libyamlcpp, opencv3 }:
buildRosPackage {
  pname = "ros-foxy-openvslam";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/OpenVSLAM-Community/openvslam-release/archive/release/foxy/openvslam/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "b5f1c77b3aea035f4487fb7958135c37bf035698bc1e906a70dd1e2353744fcd";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ eigen glog libg2o libyamlcpp opencv3 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''OpenVSLAM: A Versatile Visual SLAM Framework'';
    license = with lib.licenses; [ "2-clause BSD" ];
  };
}
