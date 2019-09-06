
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostime, cpp-common }:
buildRosPackage {
  pname = "ros-melodic-roscpp-traits";
  version = "0.6.12";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/melodic/roscpp_traits/0.6.12-0.tar.gz";
    name = "0.6.12-0.tar.gz";
    sha256 = "052831da29842d93c6ab003a11eb6f1ba89849302bac6dd4c232471c1db5fd07";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rostime cpp-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roscpp_traits contains the message traits code as described in
    <a href="http://www.ros.org/wiki/roscpp/Overview/MessagesTraits">MessagesTraits</a>.

    This package is a component of <a href="http://www.ros.org/wiki/roscpp">roscpp</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
