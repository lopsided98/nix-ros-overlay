
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, automotive-navigation-msgs, automotive-platform-msgs, catkin, ros-environment }:
buildRosPackage {
  pname = "ros-kinetic-automotive-autonomy-msgs";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/astuff/automotive_autonomy_msgs-release/archive/release/kinetic/automotive_autonomy_msgs/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "a85b49c96c61a389718091ee8544d0f01238c0a4b34c58e545481bd4e4f9f017";
  };

  buildType = "catkin";
  buildInputs = [ ros-environment ];
  propagatedBuildInputs = [ automotive-navigation-msgs automotive-platform-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for vehicle automation'';
    license = with lib.licenses; [ mit ];
  };
}
