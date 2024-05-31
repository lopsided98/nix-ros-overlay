
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, boost, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-swri-system-util";
  version = "3.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/jazzy/swri_system_util/3.6.1-3.tar.gz";
    name = "3.6.1-3.tar.gz";
    sha256 = "4fe9380a71d478297d50ea0c8736ed133577c8572a6a57a03b1ffc779f7a5afd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp ];
  propagatedBuildInputs = [ boost rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "swri_system_util";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
