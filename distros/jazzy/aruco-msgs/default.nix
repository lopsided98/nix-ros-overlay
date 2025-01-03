
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-aruco-msgs";
  version = "5.0.5-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/aruco_ros-release/archive/release/jazzy/aruco_msgs/5.0.5-1.tar.gz";
    name = "5.0.5-1.tar.gz";
    sha256 = "30e0cebc80df8d1a3ae3f31792ddb859d83d0b3d35910303735b9045ebaba315";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The aruco_msgs package";
    license = with lib.licenses; [ mit ];
  };
}
