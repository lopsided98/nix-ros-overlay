
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-smacc2-msgs";
  version = "2.3.18-r1";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/humble/smacc2_msgs/2.3.18-1.tar.gz";
    name = "2.3.18-1.tar.gz";
    sha256 = "b817e5b81935c29714060282c7f05b516cca703c42085f64f5bb09307893334f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages and services used in smacc2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
