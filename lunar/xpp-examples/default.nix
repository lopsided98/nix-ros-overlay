
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xpp-quadrotor, xpp-hyq, rosbag, catkin, xpp-vis, roscpp }:
buildRosPackage {
  pname = "ros-lunar-xpp-examples";
  version = "1.0.10";

  src = fetchurl {
    url = https://github.com/leggedrobotics/xpp-release/archive/release/lunar/xpp_examples/1.0.10-0.tar.gz;
    sha256 = "ef9b582e78e0879a1dd79d638284530c0d4f16a7d8cc9da8839b5dbef4edcc41";
  };

  buildInputs = [ xpp-quadrotor xpp-hyq rosbag xpp-vis roscpp ];
  propagatedBuildInputs = [ xpp-quadrotor xpp-hyq rosbag xpp-vis roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Examples of how to use the xpp framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
