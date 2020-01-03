
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, automotive-navigation-msgs, automotive-platform-msgs, catkin }:
buildRosPackage {
  pname = "ros-kinetic-automotive-autonomy-msgs";
  version = "2.0.3";

  src = fetchurl {
    url = "https://github.com/astuff/automotive_autonomy_msgs-release/archive/release/kinetic/automotive_autonomy_msgs/2.0.3-0.tar.gz";
    name = "2.0.3-0.tar.gz";
    sha256 = "d2ea8e1e220d88b127839be571455c3df6799039850b50f3645a10b78c17b1ab";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ automotive-navigation-msgs automotive-platform-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for vehicle automation'';
    license = with lib.licenses; [ mit ];
  };
}
