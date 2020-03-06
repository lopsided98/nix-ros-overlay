
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, boost, rclcpp }:
buildRosPackage {
  pname = "ros-dashing-swri-system-util";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_system_util/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "48359f72cb2deae5d6cfcb58280c77690dea11ea1cce8665b19c0af81fa35039";
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
