
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, boost, rclcpp }:
buildRosPackage {
  pname = "ros-eloquent-swri-system-util";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/eloquent/swri_system_util/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "bb1ade3b9b060716ded6ea4be875a2dbfba7d6a3c46bd9fc30766de14a6c2a9d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-index-cpp ];
  propagatedBuildInputs = [ boost rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_system_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
