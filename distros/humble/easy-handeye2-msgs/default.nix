# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchFromGitHub, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-easy-handeye2-msgs";
  version = "1.1.7-r1";

  src = fetchFromGitHub {
    owner = "Thieso";
    repo = "easy_handeye2_msgs";
    rev = "480de5a";
    hash = "sha256-zHsVO/97NCXnzjVwy4xq9D2r2aPGQLH3OErc4RwXvNo=";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  propagatedBuildInputs = [ ros-environment rosidl-default-runtime std-msgs geometry-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = "Easy handeye2 messages";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
