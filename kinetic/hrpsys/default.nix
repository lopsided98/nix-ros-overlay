
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, git, irrlicht, xorg, SDL, glew, pythonPackages, graphviz, libxml2, cmake, freeglut, openhrp3, opencv3, qhull, pkg-config, doxygen, mk }:
buildRosPackage {
  pname = "ros-kinetic-hrpsys";
  version = "315.14.0";

  src = fetchurl {
    url = "https://github.com/tork-a/hrpsys-release/archive/release/kinetic/hrpsys/315.14.0-0.tar.gz";
    name = "315.14.0-0.tar.gz";
    sha256 = "65f8505cf024ffd75186075a5fc6ce8fe8d69454b954fe00548abe9e2757bf12";
  };

  buildType = "cmake";
  buildInputs = [ git irrlicht SDL graphviz xorg.libXmu libxml2 pythonPackages.tkinter freeglut openhrp3 opencv3 qhull glew doxygen mk ];
  propagatedBuildInputs = [ irrlicht SDL xorg.libXmu libxml2 pythonPackages.tkinter freeglut openhrp3 opencv3 qhull ];
  nativeBuildInputs = [ pkg-config cmake ];

  meta = {
    description = ''<p>An <a href="http://www.openrtm.org/pub/OpenRTM-aist/">OpenRTM-aist</a>-based robot controller. This package is the most tailored for humanoid (dual-arm and/or biped) robots for historical reason.</p>
   <p>hrpsys package does not only wraps but build and installs the code from its mainstream repository (<a href="https://github.com/fkanehiro/hrpsys-base/">github.com/fkanehiro/hrpsys-base</a>).</p>
   <p>The package version number is synchronized to that of mainstream, based on <a href="https://github.com/start-jsk/rtmros_common/issues/165#issuecomment-34536168">this decision</a>. Its semantics:<br/>
    <ul>
     <li><b>MAJOR</b>: Synchronized with <a href="http://wiki.ros.org/openhrp3">OpenHRP3</a></li>
     <li><b>MINOR</b>: Indicate IDL compatibility (packages with different version numbers in this section are NOT compatible)</li>
     <li><b>PATCH</b>: Packages with different version numbers in this section ARE compatible.</li>
    </ul>
   </p>
   <p>API document is <a href="http://fkanehiro.github.io/hrpsys-base/">auto-generated on github</a>.
   </p>'';
    license = with lib.licenses; [ "EPL" ];
  };
}
