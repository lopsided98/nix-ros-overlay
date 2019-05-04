
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, pythonPackages, doxygen }:
buildRosPackage {
  pname = "ros-kinetic-openrtm-aist-python";
  version = "1.1.0-r1";

  src = fetchurl {
    url = https://github.com/tork-a/openrtm_aist_python-release/archive/release/kinetic/openrtm_aist_python/1.1.0-1.tar.gz;
    sha256 = "f4607a16d5c2aeabf8be67c124d19526e0adde500005f383d751beb3d8e4c04e";
  };

  buildInputs = [ doxygen pythonPackages.setuptools ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''<p>Python binding of OpenRTM-AIST (see <a href="http://www.ros.org/wiki/openrtm_aist">openrtm_aist</a> for
    further information).</p>

   <p><i>OpenRTM-aist is an <a href="http://ieeexplore.ieee.org/xpl/login.jsp?tp=&amp;arnumber=1545521&amp;url=http%3A%2F%2Fieeexplore.ieee.org%2Fiel5%2F10375%2F32977%2F01545521.pdf%3Farnumber%3D1545521">RT-Middleware</a>-baseed,
   component-oriented software platform to robotics development that
   is made and maintained in AIST (National Institute of Advanced
   Industrial Science and Technology) in Japan </i> (<a href="http://openrtm.org/openrtm/en/content/introduction-0">excerpts from here</a>)</p>'';
    license = with lib.licenses; [ "EPL" ];
  };
}
