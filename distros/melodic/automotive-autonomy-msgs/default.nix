
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, automotive-navigation-msgs, automotive-platform-msgs, catkin, ros-environment }:
buildRosPackage {
  pname = "ros-melodic-automotive-autonomy-msgs";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/astuff/automotive_autonomy_msgs-release/archive/release/melodic/automotive_autonomy_msgs/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "2899316eab20c57ab7bcc0d5d8bdb46da42c9a66d94200376ead64b7ca74d6b5";
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
