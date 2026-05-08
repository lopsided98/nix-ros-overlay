
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, boost, geometry-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-autoware-signal-processing";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_signal_processing/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "19eeaeaf611ba0849a071557007607c6061ec4d1ac95cc184b498721c5fa4690";
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
