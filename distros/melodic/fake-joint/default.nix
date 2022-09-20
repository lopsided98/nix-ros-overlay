
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fake-joint-driver, fake-joint-launch }:
buildRosPackage {
  pname = "ros-melodic-fake-joint";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/fake_joint-release/archive/release/melodic/fake_joint/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "918e8d3bdbc84b3e81e0ee5f9ed1bd1d0477bae1354f07aa15618a40bdfdf3be";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ fake-joint-driver fake-joint-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This metapackage depends on fake-joint related package for ros_control.'';
    license = with lib.licenses; [ asl20 ];
  };
}
