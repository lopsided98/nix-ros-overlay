
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-core, ament-lint-auto, ament-lint-common, rosidl-core-generators, service-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosidl-default-generators";
  version = "1.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/rolling/rosidl_default_generators/1.6.0-2.tar.gz";
    name = "1.6.0-2.tar.gz";
    sha256 = "65fffeae2a816a84b7f93a66fda6ce2e8b71cb896da3b650b167f79672e1d335";
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
