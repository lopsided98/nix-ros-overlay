
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-yaml-cpp-0-3";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yaml_cpp_0_3-release/archive/release/kinetic/yaml_cpp_0_3/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "434e23ecd0af3c87b26327868dfdc51f662cb9eef6b8adfc4cbf191dd2931a36";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Legacy version of yaml cpp without boost, namespaced to avoid system conflicts.'';
    license = with lib.licenses; [ mit ];
  };
}
