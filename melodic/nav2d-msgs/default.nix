
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-nav2d-msgs";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/skasperski/navigation_2d-release/archive/release/melodic/nav2d_msgs/0.4.2-0.tar.gz;
    sha256 = "0905a0e0fde94cf6fc3876a5ff6f0f987b66dd9ffb756d578e45c71f22148b51";
  };

  buildInputs = [ std-msgs sensor-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs sensor-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used for 2D-Navigation.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
