
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-python, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, python3, rosidl-cli, rosidl-parser }:
buildRosPackage {
  pname = "ros-jazzy-rosidl-generator-type-description";
  version = "4.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/jazzy/rosidl_generator_type_description/4.6.2-1.tar.gz";
    name = "4.6.2-1.tar.gz";
    sha256 = "15a9b89df524597c7c25a937743c96f61cad66da821f2c7f8088e085be72032b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core ament-index-python python3 rosidl-cli rosidl-parser ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-python ament-cmake-ros python3 ];

  meta = {
    description = "Generate hashes and descriptions of ROS 2 interface types, per REP-2011.";
    license = with lib.licenses; [ asl20 ];
  };
}
