
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostime, cpp-common }:
buildRosPackage {
  pname = "ros-lunar-roscpp-traits";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/roscpp_core-release/archive/release/lunar/roscpp_traits/0.6.11-0.tar.gz;
    sha256 = "d39697b61530d9ad8ca7a96dbc4a371d8f2a50eb9f85e11dc32a026735393715";
  };

  propagatedBuildInputs = [ rostime cpp-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roscpp_traits contains the message traits code as described in
    <a href="http://www.ros.org/wiki/roscpp/Overview/MessagesTraits">MessagesTraits</a>.

    This package is a component of <a href="http://www.ros.org/wiki/roscpp">roscpp</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
