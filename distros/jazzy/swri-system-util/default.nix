
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, boost, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-swri-system-util";
  version = "3.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/jazzy/swri_system_util/3.7.3-1.tar.gz";
    name = "3.7.3-1.tar.gz";
    sha256 = "fb3849b41d8bdd7293f5af212ca4fd430c05f797d1024e6b4100f6b7d5e29f89";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp ];
  propagatedBuildInputs = [ boost rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package with commonly used system utilities.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
