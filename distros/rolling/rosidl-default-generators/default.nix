
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-core, ament-lint-auto, ament-lint-common, rosidl-core-generators, service-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosidl-default-generators";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/rolling/rosidl_default_generators/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "da84afe35b3c317e6f8181faa455f756208456c1787d2289296e942c4e0a188f";
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
