
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-lgsvl-msgs";
  version = "0.0.1";

  src = fetchurl {
    url = https://github.com/lgsvl/lgsvl_msgs-release/archive/release/lunar/lgsvl_msgs/0.0.1-0.tar.gz;
    sha256 = "2e5479ca9eecb25fd6bcab5e9d1b179b6f6d055367b94795c2cf64f84e383960";
  };

  buildInputs = [ std-msgs sensor-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs sensor-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The lgsvl_msgs package for ground truth data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
