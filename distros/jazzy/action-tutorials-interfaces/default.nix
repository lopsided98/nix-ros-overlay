
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-action-tutorials-interfaces";
  version = "0.33.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/jazzy/action_tutorials_interfaces/0.33.7-1.tar.gz";
    name = "0.33.7-1.tar.gz";
    sha256 = "1471301a455676b11078ed243a7bc660965c6ac0eb9d250483bedb443ac46db5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Action tutorials action";
    license = with lib.licenses; [ asl20 ];
  };
}
