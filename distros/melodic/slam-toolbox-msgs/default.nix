
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-slam-toolbox-msgs";
  version = "1.1.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/slam_toolbox-release/archive/release/melodic/slam_toolbox_msgs/1.1.6-1.tar.gz";
    name = "1.1.6-1.tar.gz";
    sha256 = "9b72a259b2d29b84c80cbedfd01faab555414e19c1d861f2b950e64176428b44";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a sped up improved slam karto with updated SDK and visualization and modification toolsets'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
