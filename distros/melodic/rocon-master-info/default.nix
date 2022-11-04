
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rocon-bubble-icons, rocon-console, rocon-icons, rocon-python-comms, rocon-python-utils, rocon-std-msgs, rocon-uri, rospy }:
buildRosPackage {
  pname = "ros-melodic-rocon-master-info";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/melodic/rocon_master_info/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "accae02c60a70a23f1d4970a961c780c0acc172430d73af57718ed904ba50a70";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.catkin-pkg ];
  propagatedBuildInputs = [ pythonPackages.rospkg rocon-bubble-icons rocon-console rocon-icons rocon-python-comms rocon-python-utils rocon-std-msgs rocon-uri rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Publish master information - name, description, icon.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
