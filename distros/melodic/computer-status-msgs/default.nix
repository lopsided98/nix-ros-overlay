
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-computer-status-msgs";
  version = "2.1.0-r2";

  src = fetchurl {
    url = "https://github.com/130s/computer_status_msgs-release/archive/release/melodic/computer_status_msgs/2.1.0-2.tar.gz";
    name = "2.1.0-2.tar.gz";
    sha256 = "ec7f20dd506aa760527208fe2765288f0362145aae7a9f1f2355ad7152618327";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages definitions for representing computer's hardware state, such as battery information, GPU, some miscellaneous sensors. Format is in ROS. Originally developed at <a href="https://github.com/PR2/pr2_common/tree/e64f0362b7bff0f4d1d9916f805cf91ad561b439/pr2_msgs">pr2_common repository</a>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
