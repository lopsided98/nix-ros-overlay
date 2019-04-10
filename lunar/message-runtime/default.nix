
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cpp-common, roscpp-traits, catkin, rostime, roscpp-serialization, genpy }:
buildRosPackage {
  pname = "ros-lunar-message-runtime";
  version = "0.4.12";

  src = fetchurl {
    url = https://github.com/ros-gbp/message_runtime-release/archive/release/lunar/message_runtime/0.4.12-0.tar.gz;
    sha256 = "dd6efff27eb4f5a02ec9cf1120c9b502abbd0f741caa57b4b3cdcc6b1ca21763";
  };

  propagatedBuildInputs = [ genpy cpp-common roscpp-serialization roscpp-traits rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package modeling the run-time dependencies for language bindings of messages.'';
    #license = lib.licenses.BSD;
  };
}
