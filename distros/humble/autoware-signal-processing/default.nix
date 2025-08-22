
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, boost, geometry-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-autoware-signal-processing";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_signal_processing/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "2785e7070b0e0fab0bda24294678cbb530d6f08b3d3e50f77c05f895ec641159";
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
