
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, fmt, geometry-msgs, hardware-interface, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-controller-interface";
  version = "5.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/kilted/controller_interface/5.12.0-1.tar.gz";
    name = "5.12.0-1.tar.gz";
    sha256 = "a6b7e7ce3020da6c17a26201d6b638b2c8eac6f46b39fbb784c1ee188a267d78";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h fmt ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock geometry-msgs sensor-msgs std-msgs ];
  propagatedBuildInputs = [ hardware-interface rclcpp-lifecycle realtime-tools ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "Base classes for controllers and syntax cookies for supporting common sensor types in controllers and broadcasters";
    license = with lib.licenses; [ asl20 ];
  };
}
