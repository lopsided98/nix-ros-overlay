
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-core, ament-lint-auto, ament-lint-common, rosidl-core-generators, service-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rosidl-default-generators";
  version = "1.6.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/jazzy/rosidl_default_generators/1.6.0-3.tar.gz";
    name = "1.6.0-3.tar.gz";
    sha256 = "da6f799804d096e72639c5f9e9683661bc3d5d4fd68e2c01ff0709f0adad2848";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs ament-cmake-core rosidl-core-generators service-msgs ];
  nativeBuildInputs = [ action-msgs ament-cmake ament-cmake-core rosidl-core-generators service-msgs ];

  meta = {
    description = "A configuration package defining the default ROS interface generators.";
    license = with lib.licenses; [ asl20 ];
  };
}
