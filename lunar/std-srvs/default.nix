
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-std-srvs";
  version = "1.11.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm_msgs-release/archive/release/lunar/std_srvs/1.11.2-0.tar.gz;
    sha256 = "57a93df7bd701d43661bef6febc3b8594ab499b3af0eb64d4266591804b21f07";
  };

  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common service definitions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
