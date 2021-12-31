
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, glog, libg2o, libyamlcpp, opencv3 }:
buildRosPackage {
  pname = "ros-galactic-openvslam";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/OpenVSLAM-Community/openvslam-release/archive/release/galactic/openvslam/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "f538afb090fb261f4f086249cda7a195c41375ed30453a21550de24b7a8f8be6";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ eigen glog libg2o libyamlcpp opencv3 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''OpenVSLAM: A Versatile Visual SLAM Framework'';
    license = with lib.licenses; [ "2-clause BSD" ];
  };
}
