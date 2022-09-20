
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-grbl-msgs";
  version = "0.0.2-r2";

  src = fetchurl {
    url = "https://github.com/flynneva/grbl_msgs-release/archive/release/foxy/grbl_msgs/0.0.2-2.tar.gz";
    name = "0.0.2-2.tar.gz";
    sha256 = "3408a480eafe47cb705bd2f477f4d36d9e63d383ed566d49a4e7905a5daf3b18";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 Messages package for GRBL devices'';
    license = with lib.licenses; [ mit ];
  };
}
