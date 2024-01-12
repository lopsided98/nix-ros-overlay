
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, automotive-navigation-msgs, automotive-platform-msgs, catkin, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-automotive-autonomy-msgs";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/astuff/automotive_autonomy_msgs-release/archive/release/noetic/automotive_autonomy_msgs/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "5eee587986b5025f1686c5cfba6136629675942dd69467c2c5a81442cf8a1a0d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ros-environment ];
  propagatedBuildInputs = [ automotive-navigation-msgs automotive-platform-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for vehicle automation'';
    license = with lib.licenses; [ mit ];
  };
}
