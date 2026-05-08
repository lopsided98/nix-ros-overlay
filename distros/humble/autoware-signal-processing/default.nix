
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, boost, geometry-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-autoware-signal-processing";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_signal_processing/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "ceba6721fb7b60600aa85bfc5cc45245cc6af89bc7d1b81f193202f99b0126b0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ boost geometry-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The signal processing package";
    license = with lib.licenses; [ asl20 ];
  };
}
