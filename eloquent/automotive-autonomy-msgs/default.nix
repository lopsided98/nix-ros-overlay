
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, automotive-navigation-msgs, automotive-platform-msgs }:
buildRosPackage {
  pname = "ros-eloquent-automotive-autonomy-msgs";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/astuff/automotive_autonomy_msgs-release/archive/release/eloquent/automotive_autonomy_msgs/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "7e4a50589263debd9d393ef45ed7699f89aa051e629cd55fcfa945aaa930b980";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ automotive-navigation-msgs automotive-platform-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages for vehicle automation'';
    license = with lib.licenses; [ mit ];
  };
}
