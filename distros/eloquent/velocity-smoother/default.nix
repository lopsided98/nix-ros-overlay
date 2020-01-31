
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, geometry-msgs, launch-testing, launch-testing-ament-cmake, launch-testing-ros, nav-msgs, python3Packages, rcl-interfaces, rclcpp, rclcpp-components, ros2test }:
buildRosPackage {
  pname = "ros-eloquent-velocity-smoother";
  version = "0.14.0-r1";

  src = fetchurl {
    url = "https://github.com/stonier/velocity_smoother-release/archive/release/eloquent/velocity_smoother/0.14.0-1.tar.gz";
    name = "0.14.0-1.tar.gz";
    sha256 = "6069d8a906a936bb642b1bc4bec812ac89afdff3ae7bc11e9f180324b40387ae";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-build ];
  checkInputs = [ launch-testing launch-testing-ament-cmake launch-testing-ros python3Packages.matplotlib ros2test ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs rcl-interfaces rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Bound incoming velocity messages according to robot velocity and acceleration limits.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
