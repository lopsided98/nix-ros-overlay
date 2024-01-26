
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, rosidl-typesupport-c }:
buildRosPackage {
  pname = "ros-humble-mocap4r2-marker-viz-srvs";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap4r2-release/archive/release/humble/mocap4r2_marker_viz_srvs/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "a42f557ea79dc613d73400d0a032ac0106479c764837610353a885177c9c0221";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime rosidl-typesupport-c ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Service definitions for the marker visualization node'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
