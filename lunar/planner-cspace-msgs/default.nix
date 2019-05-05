
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-planner-cspace-msgs";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation_msgs-release/archive/release/lunar/planner_cspace_msgs/0.3.1-0.tar.gz;
    sha256 = "dcfac96cdd4998c622be33803a0cf592054df38fe40d58de061c246884a5efa3";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for planner_cspace package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
