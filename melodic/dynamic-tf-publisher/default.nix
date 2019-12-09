
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, dynamic-reconfigure, tf, catkin, rospy, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-dynamic-tf-publisher";
  version = "2.2.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/melodic/dynamic_tf_publisher/2.2.10-0.tar.gz";
    name = "2.2.10-0.tar.gz";
    sha256 = "a6f34176461073a9a15126d6c6948988f94fc3de6d9698a9c94d7784e941a914";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs dynamic-reconfigure tf rospy message-generation ];
  propagatedBuildInputs = [ tf message-runtime geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''dynamically set the tf trensformation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
