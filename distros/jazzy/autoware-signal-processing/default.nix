
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, boost, geometry-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-autoware-signal-processing";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_signal_processing/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "d93369c5e961008d2c0e38644c443082efe145b992e9d519ac047a22c8eeac60";
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
