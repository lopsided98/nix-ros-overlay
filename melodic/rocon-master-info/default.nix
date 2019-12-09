
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rocon-python-comms, rocon-console, pythonPackages, rocon-icons, rocon-python-utils, catkin, rocon-std-msgs, rocon-uri, rospy, rocon-bubble-icons }:
buildRosPackage {
  pname = "ros-melodic-rocon-master-info";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/melodic/rocon_master_info/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "accae02c60a70a23f1d4970a961c780c0acc172430d73af57718ed904ba50a70";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.catkin-pkg ];
  propagatedBuildInputs = [ rocon-console rocon-python-comms pythonPackages.rospkg rocon-icons rocon-python-utils rocon-std-msgs rocon-uri rospy rocon-bubble-icons ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Publish master information - name, description, icon.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
