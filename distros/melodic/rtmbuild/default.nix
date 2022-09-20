
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, blas, catkin, cmake-modules, liblapack, message-generation, message-runtime, omniorb, openrtm-aist, openrtm-aist-python, pkg-config, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rtmbuild";
  version = "1.4.3-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_common-release/archive/release/melodic/rtmbuild/1.4.3-1.tar.gz";
    name = "1.4.3-1.tar.gz";
    sha256 = "d2b853594a8ee7bb2672d6b2e8f15a2c78e564e3197468a8fd8dc77f686b108a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ blas cmake-modules liblapack message-generation message-runtime omniorb openrtm-aist openrtm-aist-python pkg-config rostest std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Build scripts for OpenRTM and OpenHRP'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
