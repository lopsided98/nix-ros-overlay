
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-core, ament-lint-auto, ament-lint-common, rosidl-core-generators, service-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rosidl-default-generators";
  version = "1.8.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/lyrical/rosidl_default_generators/1.8.1-3.tar.gz";
    name = "1.8.1-3.tar.gz";
    sha256 = "64cb84756356c9a3a83893e17f005c6f78def007bcaadf368a8d14b237c22bf2";
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
