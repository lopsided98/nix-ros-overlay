
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, automotive-navigation-msgs, automotive-platform-msgs }:
buildRosPackage {
  pname = "ros-dashing-automotive-autonomy-msgs";
  version = "3.0.1-r2";

  src = fetchurl {
    url = "https://github.com/astuff/automotive_autonomy_msgs-release/archive/release/dashing/automotive_autonomy_msgs/3.0.1-2.tar.gz";
    name = "3.0.1-2.tar.gz";
    sha256 = "01e38c965970989ca437d0ef5d0a059a8f929460d88756e79a0877e0bb303df3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ automotive-navigation-msgs automotive-platform-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages for vehicle automation'';
    license = with lib.licenses; [ mit ];
  };
}
