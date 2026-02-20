
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, boost, geometry-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-autoware-signal-processing";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_signal_processing/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "394819afd0245a28817287b2012f2eb5a8253ed5cc41033e8f0e60d2afc5acf4";
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
