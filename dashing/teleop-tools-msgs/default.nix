
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, action-msgs, ament-lint-auto, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-dashing-teleop-tools-msgs";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/dashing/teleop_tools_msgs/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "525574e5ad6dc449341d69a948dc2006ec2e42a0a87780ba98f832962adefbf9";
  };

  buildType = "ament_cmake";
  buildInputs = [ action-msgs ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''The teleop_tools_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
